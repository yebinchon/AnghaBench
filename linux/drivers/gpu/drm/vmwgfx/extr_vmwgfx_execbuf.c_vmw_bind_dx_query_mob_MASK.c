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
struct vmw_sw_context {scalar_t__ dx_query_mob; int /*<<< orphan*/  dx_query_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct vmw_sw_context *sw_context)
{
	if (sw_context->dx_query_mob)
		FUNC0(sw_context->dx_query_ctx,
					  sw_context->dx_query_mob);
}