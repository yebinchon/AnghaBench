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
struct TYPE_2__ {int /*<<< orphan*/  bi_sector; int /*<<< orphan*/  bi_size; } ;
struct bio {TYPE_1__ bi_iter; struct bio* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct bio *b = bio->bi_private;

	b->bi_iter.bi_size = bio->bi_iter.bi_size;
	b->bi_iter.bi_sector = bio->bi_iter.bi_sector;

	FUNC1(bio);

	FUNC0(b);
}