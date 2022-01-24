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
struct timing_generator {int inst; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OPTC_DATA_SOURCE_SELECT ; 
 int /*<<< orphan*/  OPTC_SEG0_SRC_SEL ; 
 int /*<<< orphan*/  OTG_CONTROL ; 
 int /*<<< orphan*/  OTG_DISABLE_POINT_CNTL ; 
 int /*<<< orphan*/  OTG_MASTER_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VTG0_ENABLE ; 

bool FUNC3(struct timing_generator *optc)
{
	/* TODO FPGA wait for answer
	 * OTG_MASTER_UPDATE_MODE != CRTC_MASTER_UPDATE_MODE
	 * OTG_MASTER_UPDATE_LOCK != CRTC_MASTER_UPDATE_LOCK
	 */
	struct optc *optc1 = FUNC0(optc);

	/* opp instance for OTG. For DCN1.0, ODM is remoed.
	 * OPP and OPTC should 1:1 mapping
	 */
	FUNC1(OPTC_DATA_SOURCE_SELECT,
			OPTC_SEG0_SRC_SEL, optc->inst);

	/* VTG enable first is for HW workaround */
	FUNC1(CONTROL,
			VTG0_ENABLE, 1);

	/* Enable CRTC */
	FUNC2(OTG_CONTROL,
			OTG_DISABLE_POINT_CNTL, 3,
			OTG_MASTER_EN, 1);

	return true;
}