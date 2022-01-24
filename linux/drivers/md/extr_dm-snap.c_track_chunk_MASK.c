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
struct dm_snapshot {int /*<<< orphan*/  tracked_chunk_lock; int /*<<< orphan*/ * tracked_chunk_hash; } ;
struct dm_snap_tracked_chunk {int /*<<< orphan*/  node; int /*<<< orphan*/  chunk; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  chunk_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 struct dm_snap_tracked_chunk* FUNC1 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dm_snapshot *s, struct bio *bio, chunk_t chunk)
{
	struct dm_snap_tracked_chunk *c = FUNC1(bio, sizeof(struct dm_snap_tracked_chunk));

	c->chunk = chunk;

	FUNC3(&s->tracked_chunk_lock);
	FUNC2(&c->node,
		       &s->tracked_chunk_hash[FUNC0(chunk)]);
	FUNC4(&s->tracked_chunk_lock);
}