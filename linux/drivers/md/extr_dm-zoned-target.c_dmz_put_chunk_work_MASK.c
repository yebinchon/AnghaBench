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
struct dm_chunk_work {int /*<<< orphan*/  chunk; TYPE_1__* target; int /*<<< orphan*/  bio_list; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  chunk_rxtree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_chunk_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dm_chunk_work *cw)
{
	if (FUNC4(&cw->refcount)) {
		FUNC0(!FUNC1(&cw->bio_list));
		FUNC3(&cw->target->chunk_rxtree, cw->chunk);
		FUNC2(cw);
	}
}