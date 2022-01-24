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
struct mirror {TYPE_1__* dev; } ;
struct dm_io_region {int /*<<< orphan*/  count; int /*<<< orphan*/  sector; int /*<<< orphan*/  bdev; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct mirror*,struct bio*) ; 

__attribute__((used)) static void FUNC2(struct dm_io_region *io, struct mirror *m,
		       struct bio *bio)
{
	io->bdev = m->dev->bdev;
	io->sector = FUNC1(m, bio);
	io->count = FUNC0(bio);
}