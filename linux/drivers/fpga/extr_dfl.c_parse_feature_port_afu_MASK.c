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
struct dfl_fpga_enum_dfl {int dummy; } ;
struct build_feature_devs_info {scalar_t__ ioaddr; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FEATURE_ID_AFU ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PORT_CAP_MMIO_SIZE ; 
 scalar_t__ PORT_HDR_CAP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct build_feature_devs_info*,struct dfl_fpga_enum_dfl*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct build_feature_devs_info *binfo,
				  struct dfl_fpga_enum_dfl *dfl,
				  resource_size_t ofst)
{
	u64 v = FUNC3(binfo->ioaddr + PORT_HDR_CAP);
	u32 size = FUNC0(PORT_CAP_MMIO_SIZE, v) << 10;

	FUNC1(!size);

	return FUNC2(binfo, dfl, ofst, size, FEATURE_ID_AFU);
}