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
struct raid5_percpu {scalar_t__ spare_page; } ;
struct r5conf {int level; int /*<<< orphan*/  prev_chunk_sectors; int /*<<< orphan*/  chunk_sectors; int /*<<< orphan*/  previous_raid_disks; int /*<<< orphan*/  raid_disks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int STRIPE_SECTORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*,struct raid5_percpu*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct raid5_percpu*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct r5conf *conf, struct raid5_percpu *percpu)
{
	if (conf->level == 6 && !percpu->spare_page) {
		percpu->spare_page = FUNC0(GFP_KERNEL);
		if (!percpu->spare_page)
			return -ENOMEM;
	}

	if (FUNC3(percpu,
			   FUNC2(conf->raid_disks,
			       conf->previous_raid_disks),
			   FUNC2(conf->chunk_sectors,
			       conf->prev_chunk_sectors)
			   / STRIPE_SECTORS,
			   GFP_KERNEL)) {
		FUNC1(conf, percpu);
		return -ENOMEM;
	}

	return 0;
}