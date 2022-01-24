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
struct task_struct {int dummy; } ;
struct cache {struct task_struct* alloc_thread; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  bch_allocator_thread ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct cache*,char*) ; 

int FUNC3(struct cache *ca)
{
	struct task_struct *k = FUNC2(bch_allocator_thread,
					    ca, "bcache_allocator");
	if (FUNC0(k))
		return FUNC1(k);

	ca->alloc_thread = k;
	return 0;
}