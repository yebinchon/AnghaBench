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
struct map_attribute {int /*<<< orphan*/  (* show ) (struct efi_runtime_map_entry*,char*) ;} ;
struct kobject {int dummy; } ;
struct efi_runtime_map_entry {int dummy; } ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efi_runtime_map_entry*,char*) ; 
 struct map_attribute* FUNC1 (struct attribute*) ; 
 struct efi_runtime_map_entry* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj, struct attribute *attr,
			      char *buf)
{
	struct efi_runtime_map_entry *entry = FUNC2(kobj);
	struct map_attribute *map_attr = FUNC1(attr);

	return map_attr->show(entry, buf);
}