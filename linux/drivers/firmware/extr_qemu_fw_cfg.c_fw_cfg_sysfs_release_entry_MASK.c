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
struct kobject {int dummy; } ;
struct fw_cfg_sysfs_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fw_cfg_sysfs_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_cfg_sysfs_entry*) ; 
 struct fw_cfg_sysfs_entry* FUNC2 (struct kobject*) ; 

__attribute__((used)) static void FUNC3(struct kobject *kobj)
{
	struct fw_cfg_sysfs_entry *entry = FUNC2(kobj);

	FUNC0(entry);
	FUNC1(entry);
}