#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct intel_vgpu_type {unsigned int avail_instance; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {void* gvt; } ;

/* Variables and functions */
 struct intel_vgpu_type* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC4(struct kobject *kobj,
					struct device *dev, char *buf)
{
	struct intel_vgpu_type *type;
	unsigned int num = 0;
	void *gvt = FUNC1(dev)->gvt;

	type = FUNC0(gvt, FUNC2(kobj));
	if (!type)
		num = 0;
	else
		num = type->avail_instance;

	return FUNC3(buf, "%u\n", num);
}