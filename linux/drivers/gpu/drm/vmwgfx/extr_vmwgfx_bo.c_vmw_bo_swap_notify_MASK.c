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
struct ttm_buffer_object {scalar_t__ destroy; } ;

/* Variables and functions */
 scalar_t__ vmw_bo_bo_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 
 scalar_t__ vmw_user_bo_destroy ; 

void FUNC2(struct ttm_buffer_object *bo)
{
	/* Is @bo embedded in a struct vmw_buffer_object? */
	if (bo->destroy != vmw_bo_bo_free &&
	    bo->destroy != vmw_user_bo_destroy)
		return;

	/* Kill any cached kernel maps before swapout */
	FUNC0(FUNC1(bo));
}