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
struct dm_snap_tracked_chunk {int /*<<< orphan*/  node; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct dm_snap_tracked_chunk* FUNC0 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct bio *bio)
{
	struct dm_snap_tracked_chunk *c = FUNC0(bio, sizeof(struct dm_snap_tracked_chunk));
	return !FUNC1(&c->node);
}