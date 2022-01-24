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
struct efivar_entry {int dummy; } ;
struct efivar_attribute {int /*<<< orphan*/  (* show ) (struct efivar_entry*,char*) ;} ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efivar_entry*,char*) ; 
 struct efivar_attribute* FUNC2 (struct attribute*) ; 
 struct efivar_entry* FUNC3 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj, struct attribute *attr,
				char *buf)
{
	struct efivar_entry *var = FUNC3(kobj);
	struct efivar_attribute *efivar_attr = FUNC2(attr);
	ssize_t ret = -EIO;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	if (efivar_attr->show) {
		ret = efivar_attr->show(var, buf);
	}
	return ret;
}