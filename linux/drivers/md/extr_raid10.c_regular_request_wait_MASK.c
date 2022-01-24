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
struct r10conf {scalar_t__ reshape_progress; int /*<<< orphan*/  wait_barrier; int /*<<< orphan*/  mddev; } ;
struct mddev {int /*<<< orphan*/  recovery; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_RESHAPE ; 
 int /*<<< orphan*/  FUNC0 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct mddev *mddev, struct r10conf *conf,
				 struct bio *bio, sector_t sectors)
{
	FUNC3(conf);
	while (FUNC2(MD_RECOVERY_RESHAPE, &mddev->recovery) &&
	    bio->bi_iter.bi_sector < conf->reshape_progress &&
	    bio->bi_iter.bi_sector + sectors > conf->reshape_progress) {
		FUNC1(conf->mddev, "wait reshape");
		FUNC0(conf);
		FUNC4(conf->wait_barrier,
			   conf->reshape_progress <= bio->bi_iter.bi_sector ||
			   conf->reshape_progress >= bio->bi_iter.bi_sector +
			   sectors);
		FUNC3(conf);
	}
}