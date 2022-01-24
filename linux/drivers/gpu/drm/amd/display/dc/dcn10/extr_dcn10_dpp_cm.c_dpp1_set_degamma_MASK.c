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
struct dpp {int dummy; } ;
struct dcn10_dpp {int dummy; } ;
typedef  enum ipp_degamma_mode { ____Placeholder_ipp_degamma_mode } ipp_degamma_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CM_DGAM_CONTROL ; 
 int /*<<< orphan*/  CM_DGAM_LUT_MODE ; 
#define  IPP_DEGAMMA_MODE_BYPASS 130 
#define  IPP_DEGAMMA_MODE_HW_sRGB 129 
#define  IPP_DEGAMMA_MODE_HW_xvYCC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn10_dpp* FUNC2 (struct dpp*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp*) ; 

void FUNC4(
		struct dpp *dpp_base,
		enum ipp_degamma_mode mode)
{
	struct dcn10_dpp *dpp = FUNC2(dpp_base);
	FUNC3(dpp_base);

	switch (mode) {
	case IPP_DEGAMMA_MODE_BYPASS:
		/* Setting de gamma bypass for now */
		FUNC1(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 0);
		break;
	case IPP_DEGAMMA_MODE_HW_sRGB:
		FUNC1(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 1);
		break;
	case IPP_DEGAMMA_MODE_HW_xvYCC:
		FUNC1(CM_DGAM_CONTROL, CM_DGAM_LUT_MODE, 2);
			break;
	default:
		FUNC0();
		break;
	}
}