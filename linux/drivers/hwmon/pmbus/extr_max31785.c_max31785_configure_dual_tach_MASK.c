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
struct pmbus_driver_info {int pages; int /*<<< orphan*/ * func; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int MAX31785_NR_FAN_PAGES ; 
 int MAX31785_NR_PAGES ; 
 int /*<<< orphan*/  MFR_FAN_CONFIG ; 
 int MFR_FAN_CONFIG_DUAL_TACH ; 
 int /*<<< orphan*/  PMBUS_HAVE_FAN12 ; 
 int /*<<< orphan*/  PMBUS_PAGE ; 
 int /*<<< orphan*/  PMBUS_PAGE_VIRTUAL ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
					struct pmbus_driver_info *info)
{
	int ret;
	int i;

	for (i = 0; i < MAX31785_NR_FAN_PAGES; i++) {
		ret = FUNC1(client, PMBUS_PAGE, i);
		if (ret < 0)
			return ret;

		ret = FUNC0(client, MFR_FAN_CONFIG);
		if (ret < 0)
			return ret;

		if (ret & MFR_FAN_CONFIG_DUAL_TACH) {
			int virtual = MAX31785_NR_PAGES + i;

			info->pages = virtual + 1;
			info->func[virtual] |= PMBUS_HAVE_FAN12;
			info->func[virtual] |= PMBUS_PAGE_VIRTUAL;
		}
	}

	return 0;
}