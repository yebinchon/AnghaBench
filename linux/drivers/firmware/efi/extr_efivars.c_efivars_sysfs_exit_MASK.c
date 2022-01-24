#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efivar_sysfs_destroy ; 
 int /*<<< orphan*/  efivar_sysfs_list ; 
 scalar_t__ efivars_del_var ; 
 TYPE_1__* efivars_kset ; 
 scalar_t__ efivars_new_var ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
	/* Remove all entries and destroy */
	int err;

	err = FUNC0(efivar_sysfs_destroy, &efivar_sysfs_list,
				  NULL, NULL);
	if (err) {
		FUNC3("efivars: Failed to destroy sysfs entries\n");
		return;
	}

	if (efivars_new_var)
		FUNC4(&efivars_kset->kobj, efivars_new_var);
	if (efivars_del_var)
		FUNC4(&efivars_kset->kobj, efivars_del_var);
	FUNC1(efivars_new_var);
	FUNC1(efivars_del_var);
	FUNC2(efivars_kset);
}