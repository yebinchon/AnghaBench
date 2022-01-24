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
struct dm_snapshot {int dummy; } ;
struct dm_snap_pending_exception {int dummy; } ;
typedef  int /*<<< orphan*/  chunk_t ;

/* Variables and functions */
 struct dm_snap_pending_exception* FUNC0 (struct dm_snapshot*,struct dm_snap_pending_exception*,int /*<<< orphan*/ ) ; 
 struct dm_snap_pending_exception* FUNC1 (struct dm_snapshot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_snap_pending_exception*) ; 

__attribute__((used)) static struct dm_snap_pending_exception *
FUNC3(struct dm_snapshot *s,
			 struct dm_snap_pending_exception *pe, chunk_t chunk)
{
	struct dm_snap_pending_exception *pe2;

	pe2 = FUNC1(s, chunk);
	if (pe2) {
		FUNC2(pe);
		return pe2;
	}

	return FUNC0(s, pe, chunk);
}