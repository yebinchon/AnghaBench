#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct i2c_msg {int len; int flags; int /*<<< orphan*/  addr; int /*<<< orphan*/ * buf; } ;
struct i2c_adapter {int dummy; } ;
struct brcmstb_i2c_dev {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int COND_NOSTART ; 
 int COND_NOSTOP ; 
 int COND_RESTART ; 
 int COND_START_STOP ; 
 int I2C_M_NOSTART ; 
 int FUNC0 (struct brcmstb_i2c_dev*,struct i2c_msg*) ; 
 int FUNC1 (struct brcmstb_i2c_dev*) ; 
 int FUNC2 (struct brcmstb_i2c_dev*,int /*<<< orphan*/ *,int,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmstb_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 struct brcmstb_i2c_dev* FUNC5 (struct i2c_adapter*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adapter,
			    struct i2c_msg msgs[], int num)
{
	struct brcmstb_i2c_dev *dev = FUNC5(adapter);
	struct i2c_msg *pmsg;
	int rc = 0;
	int i;
	int bytes_to_xfer;
	u8 *tmp_buf;
	int len = 0;
	int xfersz = FUNC1(dev);
	u32 cond, cond_per_msg;

	/* Loop through all messages */
	for (i = 0; i < num; i++) {
		pmsg = &msgs[i];
		len = pmsg->len;
		tmp_buf = pmsg->buf;

		FUNC4(dev->device,
			"msg# %d/%d flg %x buf %x len %d\n", i,
			num - 1, pmsg->flags,
			pmsg->buf ? pmsg->buf[0] : '0', pmsg->len);

		if (i < (num - 1) && (msgs[i + 1].flags & I2C_M_NOSTART))
			cond = ~COND_START_STOP;
		else
			cond = COND_RESTART | COND_NOSTOP;

		FUNC3(dev, cond);

		/* Send slave address */
		if (!(pmsg->flags & I2C_M_NOSTART)) {
			rc = FUNC0(dev, pmsg);
			if (rc < 0) {
				FUNC4(dev->device,
					"NACK for addr %2.2x msg#%d rc = %d\n",
					pmsg->addr, i, rc);
				goto out;
			}
		}

		cond_per_msg = cond;

		/* Perform data transfer */
		while (len) {
			bytes_to_xfer = FUNC6(len, xfersz);

			if (len <= xfersz) {
				if (i == (num - 1))
					cond_per_msg = cond_per_msg &
						~(COND_RESTART | COND_NOSTOP);
				else
					cond_per_msg = cond;
			} else {
				cond_per_msg = (cond_per_msg & ~COND_RESTART) |
					COND_NOSTOP;
			}

			FUNC3(dev, cond_per_msg);

			rc = FUNC2(dev, tmp_buf,
						       bytes_to_xfer, pmsg);
			if (rc < 0)
				goto out;

			len -=  bytes_to_xfer;
			tmp_buf += bytes_to_xfer;

			cond_per_msg = COND_NOSTART | COND_NOSTOP;
		}
	}

	rc = num;
out:
	return rc;

}