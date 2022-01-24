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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_BUSY ; 
 int /*<<< orphan*/  OTG_CLOCK_CONTROL ; 
 int /*<<< orphan*/  OTG_CONTROL ; 
 int /*<<< orphan*/  OTG_DISABLE_POINT_CNTL ; 
 int /*<<< orphan*/  OTG_MASTER_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  VTG0_ENABLE ; 

bool FUNC4(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);

	/* disable otg request until end of the first line
	 * in the vertical blank region
	 */
	FUNC2(OTG_CONTROL,
			OTG_DISABLE_POINT_CNTL, 3,
			OTG_MASTER_EN, 0);

	FUNC1(CONTROL,
			VTG0_ENABLE, 0);

	/* CRTC disabled, so disable  clock. */
	FUNC3(OTG_CLOCK_CONTROL,
			OTG_BUSY, 0,
			1, 100000);

	return true;
}