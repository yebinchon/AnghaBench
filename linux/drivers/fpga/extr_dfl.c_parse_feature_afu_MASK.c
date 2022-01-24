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
struct dfl_fpga_enum_dfl {int dummy; } ;
struct build_feature_devs_info {TYPE_1__* feature_dev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PORT_ID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct build_feature_devs_info *binfo,
			     struct dfl_fpga_enum_dfl *dfl,
			     resource_size_t ofst)
{
	if (!binfo->feature_dev) {
		FUNC0(binfo->dev, "this AFU does not belong to any FIU.\n");
		return -EINVAL;
	}

	switch (FUNC2(binfo->feature_dev)) {
	case PORT_ID:
		return FUNC3(binfo, dfl, ofst);
	default:
		FUNC1(binfo->dev, "AFU belonging to FIU %s is not supported yet.\n",
			 binfo->feature_dev->name);
	}

	return 0;
}