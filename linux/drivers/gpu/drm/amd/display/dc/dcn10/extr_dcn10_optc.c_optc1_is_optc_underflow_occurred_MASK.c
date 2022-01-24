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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OPTC_INPUT_GLOBAL_CONTROL ; 
 int /*<<< orphan*/  OPTC_UNDERFLOW_OCCURRED_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

bool FUNC2(struct timing_generator *optc)
{
	struct optc *optc1 = FUNC0(optc);
	uint32_t underflow_occurred = 0;

	FUNC1(OPTC_INPUT_GLOBAL_CONTROL,
			OPTC_UNDERFLOW_OCCURRED_STATUS,
			&underflow_occurred);

	return (underflow_occurred == 1);
}