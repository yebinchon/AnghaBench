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
struct qib_devdata {int /*<<< orphan*/  eep_lock; int /*<<< orphan*/  twsi_eeprom_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*) ; 
 int FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int FUNC4 (struct qib_devdata*) ; 

int FUNC5(struct qib_devdata *dd, u8 eeprom_offset,
		    void *buff, int len)
{
	int ret;

	ret = FUNC0(&dd->eep_lock);
	if (!ret) {
		ret = FUNC4(dd);
		if (ret)
			FUNC2(dd, "EEPROM Reset for read failed\n");
		else
			ret = FUNC3(dd, dd->twsi_eeprom_dev,
					      eeprom_offset, buff, len);
		FUNC1(&dd->eep_lock);
	}

	return ret;
}