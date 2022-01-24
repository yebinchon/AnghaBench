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
struct refill_engine {int /*<<< orphan*/  idle_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  engine_queue; int /*<<< orphan*/  engine_counter; int /*<<< orphan*/  idle_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 TYPE_1__* omap_dmm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct refill_engine *engine)
{
	unsigned long flags;

	FUNC2(&list_lock, flags);
	FUNC1(&engine->idle_node, &omap_dmm->idle_head);
	FUNC3(&list_lock, flags);

	FUNC0(&omap_dmm->engine_counter);
	FUNC4(&omap_dmm->engine_queue);
}