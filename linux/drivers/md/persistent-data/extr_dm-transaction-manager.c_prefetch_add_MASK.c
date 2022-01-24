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
struct prefetch_set {scalar_t__* blocks; int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 scalar_t__ PREFETCH_SENTINEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct prefetch_set *p, dm_block_t b)
{
	unsigned h = FUNC2(b);

	FUNC0(&p->lock);
	if (p->blocks[h] == PREFETCH_SENTINEL)
		p->blocks[h] = b;

	FUNC1(&p->lock);
}