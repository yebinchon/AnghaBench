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
struct vmw_buffer_object {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_buffer_object*) ; 
 struct vmw_buffer_object* FUNC2 (struct ttm_buffer_object*) ; 

void FUNC3(struct ttm_buffer_object *bo)
{
	struct vmw_buffer_object *vmw_bo = FUNC2(bo);

	FUNC1(vmw_bo);
	FUNC0(vmw_bo);
}