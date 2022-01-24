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
struct gsl_params {int /*<<< orphan*/  master_update_lock_gsl_en; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_GSL_CONTROL ; 
 int /*<<< orphan*/  OTG_MASTER_UPDATE_LOCK_GSL_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct timing_generator *optc,
		   const struct gsl_params *params)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC1(OTG_GSL_CONTROL,
		OTG_MASTER_UPDATE_LOCK_GSL_EN, params->master_update_lock_gsl_en);
}