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
struct pp_smu_funcs {int dummy; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dc_context*,struct pp_smu_funcs*) ; 
 struct pp_smu_funcs* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pp_smu_funcs *FUNC2(struct dc_context *ctx)
{
	struct pp_smu_funcs *pp_smu = FUNC1(sizeof(*pp_smu), GFP_KERNEL);

	if (!pp_smu)
		return pp_smu;

	FUNC0(ctx, pp_smu);
	return pp_smu;
}