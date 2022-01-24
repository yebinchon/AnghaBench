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
struct request_queue {unsigned long queue_flags; } ;
struct dm_target {int dummy; } ;
struct dm_dev {int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct dm_target *ti, struct dm_dev *dev,
				sector_t start, sector_t len, void *data)
{
	unsigned long flush = (unsigned long) data;
	struct request_queue *q = FUNC0(dev->bdev);

	return q && (q->queue_flags & flush);
}