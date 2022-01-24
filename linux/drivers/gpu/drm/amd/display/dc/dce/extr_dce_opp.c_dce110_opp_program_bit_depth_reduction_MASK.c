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
struct bit_depth_reduction_params {int dummy; } ;

/* Variables and functions */
 struct dce110_opp* FUNC0 (struct output_pixel_processor*) ; 
 int /*<<< orphan*/  FUNC1 (struct dce110_opp*,struct bit_depth_reduction_params const*) ; 
 int /*<<< orphan*/  FUNC2 (struct dce110_opp*,struct bit_depth_reduction_params const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dce110_opp*,struct bit_depth_reduction_params const*) ; 

void FUNC4(
	struct output_pixel_processor *opp,
	const struct bit_depth_reduction_params *params)
{
	struct dce110_opp *opp110 = FUNC0(opp);

	FUNC3(opp110, params);
	FUNC1(opp110, params);
	FUNC2(opp110, params);
}