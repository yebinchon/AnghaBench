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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct smu_context {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FEATURE_ACDC_BIT ; 
 int /*<<< orphan*/  FEATURE_CG_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_DCEFCLK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_FCLK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_GFXCLK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_LINK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_MP0CLK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_PREFETCHER_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_SOCCLK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_UCLK_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_UVD_BIT ; 
 int /*<<< orphan*/  FEATURE_DPM_VCE_BIT ; 
 int /*<<< orphan*/  FEATURE_FAN_CONTROL_BIT ; 
 int /*<<< orphan*/  FEATURE_FW_CTF_BIT ; 
 int /*<<< orphan*/  FEATURE_GFXOFF_BIT ; 
 int /*<<< orphan*/  FEATURE_GFX_EDC_BIT ; 
 int /*<<< orphan*/  FEATURE_GFX_PER_CU_CG_BIT ; 
 int /*<<< orphan*/  FEATURE_LED_DISPLAY_BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FEATURE_PPT_BIT ; 
 int /*<<< orphan*/  FEATURE_RM_BIT ; 
 int /*<<< orphan*/  FEATURE_TDC_BIT ; 
 int /*<<< orphan*/  FEATURE_THERMAL_BIT ; 
 int /*<<< orphan*/  FEATURE_ULV_BIT ; 
 int /*<<< orphan*/  FEATURE_VR0HOT_BIT ; 
 int /*<<< orphan*/  FEATURE_VR1HOT_BIT ; 
 int /*<<< orphan*/  FEATURE_XGMI_BIT ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct smu_context *smu,
				  uint32_t *feature_mask, uint32_t num)
{
	if (num > 2)
		return -EINVAL;

	FUNC1(feature_mask, 0, sizeof(uint32_t) * num);

	*(uint64_t *)feature_mask |= FUNC0(FEATURE_DPM_PREFETCHER_BIT)
				| FUNC0(FEATURE_DPM_GFXCLK_BIT)
				| FUNC0(FEATURE_DPM_UCLK_BIT)
				| FUNC0(FEATURE_DPM_SOCCLK_BIT)
				| FUNC0(FEATURE_DPM_UVD_BIT)
				| FUNC0(FEATURE_DPM_VCE_BIT)
				| FUNC0(FEATURE_ULV_BIT)
				| FUNC0(FEATURE_DPM_MP0CLK_BIT)
				| FUNC0(FEATURE_DPM_LINK_BIT)
				| FUNC0(FEATURE_DPM_DCEFCLK_BIT)
				| FUNC0(FEATURE_PPT_BIT)
				| FUNC0(FEATURE_TDC_BIT)
				| FUNC0(FEATURE_THERMAL_BIT)
				| FUNC0(FEATURE_GFX_PER_CU_CG_BIT)
				| FUNC0(FEATURE_RM_BIT)
				| FUNC0(FEATURE_ACDC_BIT)
				| FUNC0(FEATURE_VR0HOT_BIT)
				| FUNC0(FEATURE_VR1HOT_BIT)
				| FUNC0(FEATURE_FW_CTF_BIT)
				| FUNC0(FEATURE_LED_DISPLAY_BIT)
				| FUNC0(FEATURE_FAN_CONTROL_BIT)
				| FUNC0(FEATURE_GFX_EDC_BIT)
				| FUNC0(FEATURE_GFXOFF_BIT)
				| FUNC0(FEATURE_CG_BIT)
				| FUNC0(FEATURE_DPM_FCLK_BIT)
				| FUNC0(FEATURE_XGMI_BIT);
	return 0;
}