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
typedef  scalar_t__ u32 ;
struct rxe_pool {scalar_t__ max_index; scalar_t__ min_index; scalar_t__ last; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC4(struct rxe_pool *pool)
{
	u32 index;
	u32 range = pool->max_index - pool->min_index + 1;

	index = FUNC2(pool->table, range, pool->last);
	if (index >= range)
		index = FUNC1(pool->table, range);

	FUNC0(index >= range);
	FUNC3(index, pool->table);
	pool->last = index;
	return index + pool->min_index;
}