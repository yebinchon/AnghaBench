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
typedef  int uint32_t ;
struct timing_generator {int /*<<< orphan*/  inst; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  DWB_SOURCE_SELECT ; 
 int /*<<< orphan*/  OPTC_DWB0_SOURCE_SELECT ; 
 int /*<<< orphan*/  OPTC_DWB1_SOURCE_SELECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct timing_generator *optc,
		uint32_t dwb_pipe_inst)
{
	struct optc *optc1 = FUNC0(optc);

	if (dwb_pipe_inst == 0)
		FUNC1(DWB_SOURCE_SELECT,
				OPTC_DWB0_SOURCE_SELECT, optc->inst);
	else if (dwb_pipe_inst == 1)
		FUNC1(DWB_SOURCE_SELECT,
				OPTC_DWB1_SOURCE_SELECT, optc->inst);
}