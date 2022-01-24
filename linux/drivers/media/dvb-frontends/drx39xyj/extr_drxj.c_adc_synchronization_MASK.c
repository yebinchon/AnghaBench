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
typedef  int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; } ;

/* Variables and functions */
 int EIO ; 
 int IQM_AF_CLKNEG_CLKNEGDATA__M ; 
 int /*<<< orphan*/  IQM_AF_CLKNEG__A ; 
 int FUNC0 (struct drx_demod_instance*,int*) ; 
 int FUNC1 (struct i2c_device_addr*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_device_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct drx_demod_instance *demod)
{
	struct i2c_device_addr *dev_addr = NULL;
	int rc;
	u16 count = 0;

	dev_addr = demod->my_i2c_dev_addr;

	rc = FUNC0(demod, &count);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}

	if (count == 1) {
		/* Try sampling on a different edge */
		u16 clk_neg = 0;

		rc = FUNC1(dev_addr, IQM_AF_CLKNEG__A, &clk_neg, 0);
		if (rc != 0) {
			FUNC3("error %d\n", rc);
			goto rw_error;
		}

		clk_neg ^= IQM_AF_CLKNEG_CLKNEGDATA__M;
		rc = FUNC2(dev_addr, IQM_AF_CLKNEG__A, clk_neg, 0);
		if (rc != 0) {
			FUNC3("error %d\n", rc);
			goto rw_error;
		}

		rc = FUNC0(demod, &count);
		if (rc != 0) {
			FUNC3("error %d\n", rc);
			goto rw_error;
		}
	}

	/* TODO: implement fallback scenarios */
	if (count < 2)
		return -EIO;

	return 0;
rw_error:
	return rc;
}