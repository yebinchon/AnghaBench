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
typedef  scalar_t__ u32 ;
struct dfl_fpga_enum_dfl {scalar_t__ ioaddr; } ;
struct build_feature_devs_info {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 scalar_t__ DFH ; 
 int /*<<< orphan*/  DFH_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NEXT_AFU ; 
 int /*<<< orphan*/  NEXT_AFU_NEXT_DFH_OFST ; 
 int FUNC1 (struct build_feature_devs_info*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct build_feature_devs_info *binfo,
			     struct dfl_fpga_enum_dfl *dfl,
			     resource_size_t ofst)
{
	u32 id, offset;
	u64 v;
	int ret = 0;

	v = FUNC6(dfl->ioaddr + ofst + DFH);
	id = FUNC0(DFH_ID, v);

	/* create platform device for dfl feature dev */
	ret = FUNC1(binfo, FUNC4(id),
				    dfl->ioaddr + ofst);
	if (ret)
		return ret;

	ret = FUNC2(binfo, dfl, ofst, 0, 0);
	if (ret)
		return ret;
	/*
	 * find and parse FIU's child AFU via its NEXT_AFU register.
	 * please note that only Port has valid NEXT_AFU pointer per spec.
	 */
	v = FUNC6(dfl->ioaddr + ofst + NEXT_AFU);

	offset = FUNC0(NEXT_AFU_NEXT_DFH_OFST, v);
	if (offset)
		return FUNC5(binfo, dfl, ofst + offset);

	FUNC3(binfo->dev, "No AFUs detected on FIU %d\n", id);

	return ret;
}