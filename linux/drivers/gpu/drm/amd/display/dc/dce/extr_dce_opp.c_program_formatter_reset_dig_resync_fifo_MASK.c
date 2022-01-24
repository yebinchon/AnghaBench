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
struct output_pixel_processor {int dummy; } ;
struct dce110_opp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMT_420_PIXEL_PHASE_LOCKED ; 
 int /*<<< orphan*/  FMT_420_PIXEL_PHASE_LOCKED_CLEAR ; 
 int /*<<< orphan*/  FMT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct dce110_opp* FUNC2 (struct output_pixel_processor*) ; 

__attribute__((used)) static void FUNC3(struct output_pixel_processor *opp)
{
	struct dce110_opp *opp110 = FUNC2(opp);

	/* clear previous phase lock status*/
	FUNC0(FMT_CONTROL,
			FMT_420_PIXEL_PHASE_LOCKED_CLEAR, 1);

	/* poll until FMT_420_PIXEL_PHASE_LOCKED become 1*/
	FUNC1(FMT_CONTROL, FMT_420_PIXEL_PHASE_LOCKED, 1, 10, 10);

}