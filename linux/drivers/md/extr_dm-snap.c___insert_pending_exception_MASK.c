#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dm_snapshot {int /*<<< orphan*/  pending; int /*<<< orphan*/  pe_allocation_lock; int /*<<< orphan*/  exception_start_sequence; TYPE_2__* store; } ;
struct TYPE_7__ {int /*<<< orphan*/  old_chunk; } ;
struct dm_snap_pending_exception {TYPE_3__ e; scalar_t__ exception_sequence; int /*<<< orphan*/ * full_bio; scalar_t__ started; int /*<<< orphan*/  snapshot_bios; int /*<<< orphan*/  origin_bios; } ;
typedef  int /*<<< orphan*/  chunk_t ;
struct TYPE_6__ {TYPE_1__* type; } ;
struct TYPE_5__ {scalar_t__ (* prepare_exception ) (TYPE_2__*,TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snap_pending_exception*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static struct dm_snap_pending_exception *
FUNC6(struct dm_snapshot *s,
			   struct dm_snap_pending_exception *pe, chunk_t chunk)
{
	pe->e.old_chunk = chunk;
	FUNC0(&pe->origin_bios);
	FUNC0(&pe->snapshot_bios);
	pe->started = 0;
	pe->full_bio = NULL;

	FUNC3(&s->pe_allocation_lock);
	if (s->store->type->prepare_exception(s->store, &pe->e)) {
		FUNC4(&s->pe_allocation_lock);
		FUNC2(pe);
		return NULL;
	}

	pe->exception_sequence = s->exception_start_sequence++;
	FUNC4(&s->pe_allocation_lock);

	FUNC1(&s->pending, &pe->e);

	return pe;
}