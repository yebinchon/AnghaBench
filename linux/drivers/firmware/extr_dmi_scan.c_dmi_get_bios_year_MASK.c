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

/* Variables and functions */
 int /*<<< orphan*/  DMI_BIOS_DATE ; 
 int ENODATA ; 
 int ERANGE ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC1(void)
{
	bool exists;
	int year;

	exists = FUNC0(DMI_BIOS_DATE, &year, NULL, NULL);
	if (!exists)
		return -ENODATA;

	return year ? year : -ERANGE;
}