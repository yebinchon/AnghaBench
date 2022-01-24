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
struct dmi_sysfs_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  entry_list_lock ; 
 int /*<<< orphan*/  FUNC0 (struct dmi_sysfs_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dmi_sysfs_entry* FUNC4 (struct kobject*) ; 

__attribute__((used)) static void FUNC5(struct kobject *kobj)
{
	struct dmi_sysfs_entry *entry = FUNC4(kobj);

	FUNC2(&entry_list_lock);
	FUNC1(&entry->list);
	FUNC3(&entry_list_lock);
	FUNC0(entry);
}