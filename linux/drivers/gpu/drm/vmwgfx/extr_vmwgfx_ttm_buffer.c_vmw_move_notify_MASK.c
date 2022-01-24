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
struct ttm_mem_reg {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*,struct ttm_mem_reg*) ; 

__attribute__((used)) static void FUNC2(struct ttm_buffer_object *bo,
			    bool evict,
			    struct ttm_mem_reg *mem)
{
	FUNC0(bo, mem);
	FUNC1(bo, mem);
}