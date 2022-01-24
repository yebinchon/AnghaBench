#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bi_size; int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; TYPE_2__ bi_iter; int /*<<< orphan*/  bi_inline_vecs; } ;
struct journal_device {int discard_idx; int last_idx; int /*<<< orphan*/  discard_work; int /*<<< orphan*/  discard_in_flight; struct bio discard_bio; } ;
struct TYPE_4__ {int njournal_buckets; int /*<<< orphan*/ * d; } ;
struct cache {TYPE_3__* set; int /*<<< orphan*/  bdev; TYPE_1__ sb; int /*<<< orphan*/  discard; struct journal_device journal; } ;
struct TYPE_6__ {int /*<<< orphan*/  cl; } ;

/* Variables and functions */
#define  DISCARD_DONE 130 
#define  DISCARD_IN_FLIGHT 129 
#define  DISCARD_READY 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_OP_DISCARD ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  bch_journal_wq ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  journal_discard_endio ; 
 int /*<<< orphan*/  journal_discard_work ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cache *ca)
{
	struct journal_device *ja = &ca->journal;
	struct bio *bio = &ja->discard_bio;

	if (!ca->discard) {
		ja->discard_idx = ja->last_idx;
		return;
	}

	switch (FUNC1(&ja->discard_in_flight)) {
	case DISCARD_IN_FLIGHT:
		return;

	case DISCARD_DONE:
		ja->discard_idx = (ja->discard_idx + 1) %
			ca->sb.njournal_buckets;

		FUNC2(&ja->discard_in_flight, DISCARD_READY);
		/* fallthrough */

	case DISCARD_READY:
		if (ja->discard_idx == ja->last_idx)
			return;

		FUNC2(&ja->discard_in_flight, DISCARD_IN_FLIGHT);

		FUNC3(bio, bio->bi_inline_vecs, 1);
		FUNC5(bio, REQ_OP_DISCARD, 0);
		bio->bi_iter.bi_sector	= FUNC7(ca->set,
						ca->sb.d[ja->discard_idx]);
		FUNC4(bio, ca->bdev);
		bio->bi_iter.bi_size	= FUNC6(ca);
		bio->bi_end_io		= journal_discard_endio;

		FUNC8(&ca->set->cl);
		FUNC0(&ja->discard_work, journal_discard_work);
		FUNC9(bch_journal_wq, &ja->discard_work);
	}
}