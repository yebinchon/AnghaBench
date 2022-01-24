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
struct gsl_params {int /*<<< orphan*/  gsl_window_end_y; int /*<<< orphan*/  gsl_window_start_y; int /*<<< orphan*/  gsl_window_end_x; int /*<<< orphan*/  gsl_window_start_x; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_GSL_WINDOW_END_X ; 
 int /*<<< orphan*/  OTG_GSL_WINDOW_END_Y ; 
 int /*<<< orphan*/  OTG_GSL_WINDOW_START_X ; 
 int /*<<< orphan*/  OTG_GSL_WINDOW_START_Y ; 
 int /*<<< orphan*/  OTG_GSL_WINDOW_X ; 
 int /*<<< orphan*/  OTG_GSL_WINDOW_Y ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct timing_generator *optc,
		   const struct gsl_params *params)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC1(OTG_GSL_WINDOW_X, 0,
		OTG_GSL_WINDOW_START_X, params->gsl_window_start_x,
		OTG_GSL_WINDOW_END_X, params->gsl_window_end_x);
	FUNC1(OTG_GSL_WINDOW_Y, 0,
		OTG_GSL_WINDOW_START_Y, params->gsl_window_start_y,
		OTG_GSL_WINDOW_END_Y, params->gsl_window_end_y);
}