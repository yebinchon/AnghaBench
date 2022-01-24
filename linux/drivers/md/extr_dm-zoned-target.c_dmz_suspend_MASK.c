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
struct dmz_target {int /*<<< orphan*/  flush_work; int /*<<< orphan*/  reclaim; int /*<<< orphan*/  chunk_wq; } ;
struct dm_target {struct dmz_target* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti)
{
	struct dmz_target *dmz = ti->private;

	FUNC2(dmz->chunk_wq);
	FUNC1(dmz->reclaim);
	FUNC0(&dmz->flush_work);
}