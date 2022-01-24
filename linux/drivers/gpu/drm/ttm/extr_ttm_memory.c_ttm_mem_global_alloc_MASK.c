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
typedef  int /*<<< orphan*/  uint64_t ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_global {int /*<<< orphan*/  zone_kernel; } ;

/* Variables and functions */
 int FUNC0 (struct ttm_mem_global*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ttm_operation_ctx*) ; 

int FUNC1(struct ttm_mem_global *glob, uint64_t memory,
			 struct ttm_operation_ctx *ctx)
{
	/**
	 * Normal allocations of kernel memory are registered in
	 * the kernel zone.
	 */

	return FUNC0(glob, glob->zone_kernel, memory, ctx);
}