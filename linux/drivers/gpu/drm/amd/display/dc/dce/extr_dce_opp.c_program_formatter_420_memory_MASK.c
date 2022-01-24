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
typedef  int /*<<< orphan*/  uint32_t ;
struct output_pixel_processor {int dummy; } ;
struct dce110_opp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  FMT420_MEM0_PWR_FORCE ; 
 int /*<<< orphan*/  FMT420_MEM0_SOURCE_SEL ; 
 int /*<<< orphan*/  FMT_CONTROL ; 
 int /*<<< orphan*/  FMT_SRC_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dce110_opp* FUNC2 (struct output_pixel_processor*) ; 

__attribute__((used)) static void FUNC3(struct output_pixel_processor *opp)
{
	struct dce110_opp *opp110 = FUNC2(opp);
	uint32_t fmt_mem_cntl_value;

	/* Program source select*/
	/* Use HW default source select for FMT_MEMORYx_CONTROL */
	/* Use that value for FMT_SRC_SELECT as well*/
	FUNC0(CONTROL,
			FMT420_MEM0_SOURCE_SEL, &fmt_mem_cntl_value);

	FUNC1(FMT_CONTROL,
			FMT_SRC_SELECT, fmt_mem_cntl_value);

	/* Turn on the memory */
	FUNC1(CONTROL,
			FMT420_MEM0_PWR_FORCE, 0);
}