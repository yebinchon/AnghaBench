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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dm_snap_tracked_chunk* FUNC1 (struct bio*,int) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct dm_snap_tracked_chunk *c = FUNC1(bio, sizeof(struct dm_snap_tracked_chunk));
	FUNC0(&c->node);
}