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
struct edac_device_ctl_info {int dummy; } ;
struct ctl_info_attribute {int /*<<< orphan*/  (* show ) (struct edac_device_ctl_info*,char*) ;} ;
struct attribute {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct edac_device_ctl_info*,char*) ; 
 struct edac_device_ctl_info* FUNC1 (struct kobject*) ; 
 struct ctl_info_attribute* FUNC2 (struct attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
				struct attribute *attr, char *buffer)
{
	struct edac_device_ctl_info *edac_dev = FUNC1(kobj);
	struct ctl_info_attribute *ctl_info_attr = FUNC2(attr);

	if (ctl_info_attr->show)
		return ctl_info_attr->show(edac_dev, buffer);
	return -EIO;
}