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
typedef  int uint64_t ;
struct closure {int dummy; } ;
struct TYPE_3__ {int bucket_size; } ;
struct cache {struct closure prio; int /*<<< orphan*/  set; int /*<<< orphan*/  disk_buckets; int /*<<< orphan*/  bdev; TYPE_1__ sb; } ;
struct TYPE_4__ {int bi_sector; int /*<<< orphan*/  bi_size; } ;
struct bio {struct cache* bi_private; int /*<<< orphan*/  bi_end_io; TYPE_2__ bi_iter; } ;

/* Variables and functions */
 unsigned long REQ_META ; 
 unsigned long REQ_SYNC ; 
 struct bio* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bio*,struct closure*) ; 
 int /*<<< orphan*/  FUNC6 (struct closure*) ; 
 int /*<<< orphan*/  FUNC7 (struct closure*) ; 
 int /*<<< orphan*/  prio_endio ; 

__attribute__((used)) static void FUNC8(struct cache *ca, uint64_t bucket, int op,
		    unsigned long op_flags)
{
	struct closure *cl = &ca->prio;
	struct bio *bio = FUNC0(ca->set);

	FUNC6(cl);

	bio->bi_iter.bi_sector	= bucket * ca->sb.bucket_size;
	FUNC2(bio, ca->bdev);
	bio->bi_iter.bi_size	= FUNC4(ca);

	bio->bi_end_io	= prio_endio;
	bio->bi_private = ca;
	FUNC3(bio, op, REQ_SYNC|REQ_META|op_flags);
	FUNC1(bio, ca->disk_buckets);

	FUNC5(ca->set, bio, &ca->prio);
	FUNC7(cl);
}