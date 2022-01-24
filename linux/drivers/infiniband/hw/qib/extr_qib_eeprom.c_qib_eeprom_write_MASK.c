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
struct qib_devdata {int /*<<< orphan*/  eep_lock; } ;

/* Variables and functions */
 int FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ,void const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct qib_devdata *dd, u8 eeprom_offset,
		     const void *buff, int len)
{
	int ret;

	ret = FUNC1(&dd->eep_lock);
	if (!ret) {
		ret = FUNC0(dd, eeprom_offset, buff, len);
		FUNC2(&dd->eep_lock);
	}

	return ret;
}