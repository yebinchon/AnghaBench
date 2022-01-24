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
typedef  int /*<<< orphan*/  efi_system_table_t ;
typedef  int /*<<< orphan*/  efi_guid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *FUNC3(efi_system_table_t *sys_table, efi_guid_t guid)
{
	if (FUNC0())
		return FUNC2(sys_table, guid);
	else
		return FUNC1(sys_table, guid);
}