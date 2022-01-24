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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct dfl_fpga_enum_dfl {scalar_t__ ioaddr; } ;
struct build_feature_devs_info {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 scalar_t__ DFH ; 
 int /*<<< orphan*/  DFH_TYPE ; 
#define  DFH_TYPE_AFU 130 
#define  DFH_TYPE_FIU 129 
#define  DFH_TYPE_PRIVATE 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ; 
 int FUNC3 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ; 
 int FUNC4 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct build_feature_devs_info *binfo,
			 struct dfl_fpga_enum_dfl *dfl, resource_size_t ofst)
{
	u64 v;
	u32 type;

	v = FUNC5(dfl->ioaddr + ofst + DFH);
	type = FUNC0(DFH_TYPE, v);

	switch (type) {
	case DFH_TYPE_AFU:
		return FUNC2(binfo, dfl, ofst);
	case DFH_TYPE_PRIVATE:
		return FUNC4(binfo, dfl, ofst);
	case DFH_TYPE_FIU:
		return FUNC3(binfo, dfl, ofst);
	default:
		FUNC1(binfo->dev,
			 "Feature Type %x is not supported.\n", type);
	}

	return 0;
}