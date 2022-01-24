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

/* Variables and functions */
 int /*<<< orphan*/  VSB_TOP_ERR_ENERGY_H__A ; 
 int FUNC0 (struct i2c_device_addr*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_device_addr *dev_addr, u16 *mer)
{
	int rc;
	u16 data_hi = 0;

	rc = FUNC0(dev_addr, VSB_TOP_ERR_ENERGY_H__A, &data_hi, 0);
	if (rc != 0) {
		FUNC2("error %d\n", rc);
		goto rw_error;
	}
	*mer =
	    (u16) (FUNC1(21504) - FUNC1((data_hi << 6) / 52));

	return 0;
rw_error:
	return rc;
}