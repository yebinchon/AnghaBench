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
struct intel_vgpu_type {int fence; int weight; int /*<<< orphan*/  resolution; int /*<<< orphan*/  high_gm_size; int /*<<< orphan*/  low_gm_size; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {void* gvt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct intel_vgpu_type* FUNC1 (void*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct kobject *kobj, struct device *dev,
		char *buf)
{
	struct intel_vgpu_type *type;
	void *gvt = FUNC2(dev)->gvt;

	type = FUNC1(gvt, FUNC3(kobj));
	if (!type)
		return 0;

	return FUNC4(buf, "low_gm_size: %dMB\nhigh_gm_size: %dMB\n"
		       "fence: %d\nresolution: %s\n"
		       "weight: %d\n",
		       FUNC0(type->low_gm_size),
		       FUNC0(type->high_gm_size),
		       type->fence, FUNC5(type->resolution),
		       type->weight);
}