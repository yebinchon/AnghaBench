#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mirror {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mirror*,struct bio*) ; 

__attribute__((used)) static void FUNC2(struct mirror *m, struct bio *bio)
{
	FUNC0(bio, m->dev->bdev);
	bio->bi_iter.bi_sector = FUNC1(m, bio);
}