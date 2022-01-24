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
struct dmz_target {int /*<<< orphan*/  chunk_lock; int /*<<< orphan*/  bio_set; int /*<<< orphan*/  metadata; int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  flush_work; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  chunk_wq; } ;
struct dm_target {struct dmz_target* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_target*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dmz_target*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct dm_target *ti)
{
	struct dmz_target *dmz = ti->private;

	FUNC7(dmz->chunk_wq);
	FUNC2(dmz->chunk_wq);

	FUNC4(dmz->reclaim);

	FUNC1(&dmz->flush_work);
	FUNC2(dmz->flush_wq);

	(void) FUNC5(dmz->metadata);

	FUNC3(dmz->metadata);

	FUNC0(&dmz->bio_set);

	FUNC6(ti);

	FUNC9(&dmz->chunk_lock);

	FUNC8(dmz);
}