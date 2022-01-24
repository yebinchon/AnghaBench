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
struct ttm_tt {int dummy; } ;
struct ttm_bo_device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 unsigned int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (int) ; 

size_t FUNC2(struct ttm_bo_device *bdev,
		       unsigned long bo_size,
		       unsigned struct_size)
{
	unsigned npages = (FUNC0(bo_size)) >> PAGE_SHIFT;
	size_t size = 0;

	size += FUNC1(struct_size);
	size += FUNC1(npages * sizeof(void *));
	size += FUNC1(sizeof(struct ttm_tt));
	return size;
}