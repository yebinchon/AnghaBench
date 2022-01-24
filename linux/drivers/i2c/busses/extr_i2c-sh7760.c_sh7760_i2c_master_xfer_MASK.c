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
struct i2c_msg {int flags; } ;
struct i2c_adapter {int retries; int /*<<< orphan*/  nr; int /*<<< orphan*/  dev; struct cami2c* algo_data; } ;
struct cami2c {int status; int /*<<< orphan*/  flags; struct i2c_msg* msg; int /*<<< orphan*/  xfer_done; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2CFIER ; 
 int /*<<< orphan*/  I2CMCR ; 
 int /*<<< orphan*/  I2CMIER ; 
 int /*<<< orphan*/  I2CMSR ; 
 int /*<<< orphan*/  I2CSAR ; 
 int /*<<< orphan*/  I2CSCR ; 
 int /*<<< orphan*/  I2CSSR ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  IDF_STOP ; 
 int IDS_ARBLOST ; 
 int IDS_NACK ; 
 int /*<<< orphan*/  FUNC0 (struct cami2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct cami2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct cami2c*) ; 
 int /*<<< orphan*/  FUNC6 (struct cami2c*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap,
				  struct i2c_msg *msgs,
				  int num)
{
	struct cami2c *id = adap->algo_data;
	int i, retr;

	if (FUNC4(id)) {
		FUNC1(&adap->dev, "sh7760-i2c%d: bus busy!\n", adap->nr);
		return -EBUSY;
	}

	i = 0;
	while (i < num) {
		retr = adap->retries;
retry:
		id->flags = ((i == (num-1)) ? IDF_STOP : 0);
		id->status = 0;
		id->msg = msgs;
		FUNC2(&id->xfer_done);

		if (msgs->flags & I2C_M_RD)
			FUNC5(id);
		else
			FUNC6(id);

		FUNC7(&id->xfer_done);

		if (id->status == 0) {
			num = -EIO;
			break;
		}

		if (id->status & IDS_NACK) {
			/* wait a bit or i2c module stops working */
			FUNC3(1);
			num = -EREMOTEIO;
			break;
		}

		if (id->status & IDS_ARBLOST) {
			if (retr--) {
				FUNC3(2);
				goto retry;
			}
			num = -EREMOTEIO;
			break;
		}

		msgs++;
		i++;
	}

	id->msg = NULL;
	id->flags = 0;
	id->status = 0;

	FUNC0(id, I2CMCR, 0);
	FUNC0(id, I2CMSR, 0);
	FUNC0(id, I2CMIER, 0);
	FUNC0(id, I2CFIER, 0);

	/* reset slave module registers too: master mode enables slave
	 * module for receive ops (ack, data). Without this reset,
	 * eternal bus activity might be reported after NACK / ARBLOST.
	 */
	FUNC0(id, I2CSCR, 0);
	FUNC0(id, I2CSAR, 0);
	FUNC0(id, I2CSSR, 0);

	return num;
}