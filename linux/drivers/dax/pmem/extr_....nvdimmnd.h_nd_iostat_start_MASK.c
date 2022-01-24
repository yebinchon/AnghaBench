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
struct gendisk {int /*<<< orphan*/  part0; int /*<<< orphan*/  queue; } ;
struct bio {struct gendisk* bi_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 

__attribute__((used)) static inline bool FUNC4(struct bio *bio, unsigned long *start)
{
	struct gendisk *disk = bio->bi_disk;

	if (!FUNC2(disk->queue))
		return false;

	*start = jiffies;
	FUNC3(disk->queue, FUNC0(bio), FUNC1(bio),
			      &disk->part0);
	return true;
}