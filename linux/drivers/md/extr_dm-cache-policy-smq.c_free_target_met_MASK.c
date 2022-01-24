#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int nr_allocated; } ;
struct smq_policy {int /*<<< orphan*/  bg_work; TYPE_1__ cache_alloc; int /*<<< orphan*/  cache_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_TARGET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct smq_policy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct smq_policy *mq)
{
	unsigned nr_free;

	nr_free = FUNC1(mq->cache_size) - mq->cache_alloc.nr_allocated;
	return (nr_free + FUNC0(mq->bg_work)) >=
		FUNC2(mq, FREE_TARGET);
}