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
typedef  int u32 ;
typedef  int u16 ;
struct mtk_i2c {scalar_t__ base; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int I2C_M_IGNORE_NAK ; 
 int I2C_M_RD ; 
 int I2C_M_TEN ; 
 scalar_t__ REG_SM0D0_REG ; 
 scalar_t__ REG_SM0D1_REG ; 
 int SM0CTL1_READ ; 
 int SM0CTL1_READ_LAST ; 
 int SM0CTL1_WRITE ; 
 int FUNC1 (struct i2c_msg*) ; 
 struct mtk_i2c* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int FUNC6 (struct mtk_i2c*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_i2c*) ; 
 int FUNC8 (struct mtk_i2c*,int,int) ; 
 int FUNC9 (struct mtk_i2c*) ; 
 int FUNC10 (struct mtk_i2c*) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_i2c*) ; 
 int FUNC12 (struct mtk_i2c*) ; 

__attribute__((used)) static int FUNC13(struct i2c_adapter *adap, struct i2c_msg *msgs,
			       int num)
{
	struct mtk_i2c *i2c;
	struct i2c_msg *pmsg;
	u16 addr;
	int i, j, ret, len, page_len;
	u32 cmd;
	u32 data[2];

	i2c = FUNC2(adap);

	for (i = 0; i < num; i++) {
		pmsg = &msgs[i];

		/* wait hardware idle */
		ret = FUNC12(i2c);
		if (ret)
			goto err_timeout;

		/* start sequence */
		ret = FUNC9(i2c);
		if (ret)
			goto err_timeout;

		/* write address */
		if (pmsg->flags & I2C_M_TEN) {
			/* 10 bits address */
			addr = 0xf0 | ((pmsg->addr >> 7) & 0x06);
			addr |= (pmsg->addr & 0xff) << 8;
			if (pmsg->flags & I2C_M_RD)
				addr |= 1;
			FUNC4(addr, i2c->base + REG_SM0D0_REG);
			ret = FUNC8(i2c, SM0CTL1_WRITE, 2);
			if (ret)
				goto err_timeout;
		} else {
			/* 7 bits address */
			addr = FUNC1(pmsg);
			FUNC4(addr, i2c->base + REG_SM0D0_REG);
			ret = FUNC8(i2c, SM0CTL1_WRITE, 1);
			if (ret)
				goto err_timeout;
		}

		/* check address ACK */
		if (!(pmsg->flags & I2C_M_IGNORE_NAK)) {
			ret = FUNC6(i2c, FUNC0(0));
			if (ret)
				goto err_ack;
		}

		/* transfer data */
		for (len = pmsg->len, j = 0; len > 0; len -= 8, j += 8) {
			page_len = (len >= 8) ? 8 : len;

			if (pmsg->flags & I2C_M_RD) {
				cmd = (len > 8) ?
					SM0CTL1_READ : SM0CTL1_READ_LAST;
			} else {
				FUNC5(data, &pmsg->buf[j], page_len);
				FUNC4(data[0], i2c->base + REG_SM0D0_REG);
				FUNC4(data[1], i2c->base + REG_SM0D1_REG);
				cmd = SM0CTL1_WRITE;
			}

			ret = FUNC8(i2c, cmd, page_len);
			if (ret)
				goto err_timeout;

			if (pmsg->flags & I2C_M_RD) {
				data[0] = FUNC3(i2c->base + REG_SM0D0_REG);
				data[1] = FUNC3(i2c->base + REG_SM0D1_REG);
				FUNC5(&pmsg->buf[j], data, page_len);
			} else {
				if (!(pmsg->flags & I2C_M_IGNORE_NAK)) {
					ret = FUNC6(i2c,
								(1 << page_len)
								- 1);
					if (ret)
						goto err_ack;
				}
			}
		}
	}

	ret = FUNC10(i2c);
	if (ret)
		goto err_timeout;

	/* the return value is number of executed messages */
	return i;

err_ack:
	ret = FUNC10(i2c);
	if (ret)
		goto err_timeout;
	return -ENXIO;

err_timeout:
	FUNC7(i2c);
	FUNC11(i2c);
	return ret;
}