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
struct opal_i2c_request {int subaddr_sz; int subaddr; void* buffer_ra; void* size; void* addr; int /*<<< orphan*/  type; } ;
struct i2c_msg {int flags; int len; int* buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  OPAL_I2C_RAW_READ ; 
 int /*<<< orphan*/  OPAL_I2C_RAW_WRITE ; 
 int /*<<< orphan*/  OPAL_I2C_SM_READ ; 
 int /*<<< orphan*/  OPAL_I2C_SM_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned long,struct opal_i2c_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct opal_i2c_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap, struct i2c_msg *msgs,
				int num)
{
	unsigned long opal_id = (unsigned long)adap->algo_data;
	struct opal_i2c_request req;
	int rc, i;

	/* We only support fairly simple combinations here of one
	 * or two messages
	 */
	FUNC5(&req, 0, sizeof(req));
	switch(num) {
	case 1:
		req.type = (msgs[0].flags & I2C_M_RD) ?
			OPAL_I2C_RAW_READ : OPAL_I2C_RAW_WRITE;
		req.addr = FUNC1(msgs[0].addr);
		req.size = FUNC2(msgs[0].len);
		req.buffer_ra = FUNC3(FUNC0(msgs[0].buf));
		break;
	case 2:
		req.type = (msgs[1].flags & I2C_M_RD) ?
			OPAL_I2C_SM_READ : OPAL_I2C_SM_WRITE;
		req.addr = FUNC1(msgs[0].addr);
		req.subaddr_sz = msgs[0].len;
		for (i = 0; i < msgs[0].len; i++)
			req.subaddr = (req.subaddr << 8) | msgs[0].buf[i];
		req.subaddr = FUNC2(req.subaddr);
		req.size = FUNC2(msgs[1].len);
		req.buffer_ra = FUNC3(FUNC0(msgs[1].buf));
		break;
	}

	rc = FUNC4(opal_id, &req);
	if (rc)
		return rc;

	return num;
}