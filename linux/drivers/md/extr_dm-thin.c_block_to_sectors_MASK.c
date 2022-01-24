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
struct pool {int sectors_per_block_shift; int sectors_per_block; } ;
typedef  int sector_t ;
typedef  int dm_block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pool*) ; 

__attribute__((used)) static sector_t FUNC1(struct pool *pool, dm_block_t b)
{
	return FUNC0(pool) ?
		(b << pool->sectors_per_block_shift) :
		(b * pool->sectors_per_block);
}