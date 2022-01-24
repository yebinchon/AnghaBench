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
struct hw_asic_id {int chip_family; int /*<<< orphan*/  hw_internal_rev; } ;
typedef  enum bw_calcs_version { ____Placeholder_bw_calcs_version } bw_calcs_version ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int BW_CALCS_VERSION_CARRIZO ; 
 int BW_CALCS_VERSION_INVALID ; 
 int BW_CALCS_VERSION_POLARIS10 ; 
 int BW_CALCS_VERSION_POLARIS11 ; 
 int BW_CALCS_VERSION_POLARIS12 ; 
 int BW_CALCS_VERSION_STONEY ; 
 int BW_CALCS_VERSION_VEGA10 ; 
 int BW_CALCS_VERSION_VEGAM ; 
#define  FAMILY_AI 130 
#define  FAMILY_CZ 129 
#define  FAMILY_VI 128 

__attribute__((used)) static enum bw_calcs_version FUNC5(struct hw_asic_id asic_id)
{
	switch (asic_id.chip_family) {

	case FAMILY_CZ:
		if (FUNC3(asic_id.hw_internal_rev))
			return BW_CALCS_VERSION_STONEY;
		return BW_CALCS_VERSION_CARRIZO;

	case FAMILY_VI:
		if (FUNC2(asic_id.hw_internal_rev))
			return BW_CALCS_VERSION_POLARIS12;
		if (FUNC0(asic_id.hw_internal_rev))
			return BW_CALCS_VERSION_POLARIS10;
		if (FUNC1(asic_id.hw_internal_rev))
			return BW_CALCS_VERSION_POLARIS11;
		if (FUNC4(asic_id.hw_internal_rev))
			return BW_CALCS_VERSION_VEGAM;
		return BW_CALCS_VERSION_INVALID;

	case FAMILY_AI:
		return BW_CALCS_VERSION_VEGA10;

	default:
		return BW_CALCS_VERSION_INVALID;
	}
}