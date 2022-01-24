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
struct vmw_validation_res_node {int dummy; } ;
struct vmw_validation_context {unsigned int mem_size_left; } ;
struct vmw_validation_bo_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_validation_context*,unsigned int) ; 

int FUNC2(struct vmw_validation_context *ctx,
			       unsigned int size)
{
	size = FUNC0(sizeof(struct vmw_validation_res_node) +
				    size) +
		FUNC0(sizeof(struct vmw_validation_bo_node));
	if (!FUNC1(ctx, size))
		return -ENOMEM;

	ctx->mem_size_left += size;
	return 0;
}