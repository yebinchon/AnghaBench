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
struct vmw_sw_context {int dummy; } ;
struct vmw_resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMW_RES_DIRTY_NONE ; 
 int FUNC0 (struct vmw_sw_context*,struct vmw_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_resource*) ; 
 struct vmw_resource* FUNC2 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC3(struct vmw_sw_context *sw_context,
				struct vmw_resource *view)
{
	int ret;

	/*
	 * First add the resource the view is pointing to, otherwise it may be
	 * swapped out when the view is validated.
	 */
	ret = FUNC0(sw_context, FUNC2(view),
					    FUNC1(view));
	if (ret)
		return ret;

	return FUNC0(sw_context, view,
					     VMW_RES_DIRTY_NONE);
}