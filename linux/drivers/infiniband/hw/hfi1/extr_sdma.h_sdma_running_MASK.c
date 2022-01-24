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
struct sdma_engine {int /*<<< orphan*/  tail_lock; } ;

/* Variables and functions */
 int FUNC0 (struct sdma_engine*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline int FUNC3(struct sdma_engine *engine)
{
	unsigned long flags;
	int ret;

	FUNC1(&engine->tail_lock, flags);
	ret = FUNC0(engine);
	FUNC2(&engine->tail_lock, flags);
	return ret;
}