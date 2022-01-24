#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resync_pages {struct r10bio* raid_bio; struct page** pages; } ;
struct r10conf {int copies; TYPE_3__* mirrors; } ;
struct r10bio {int sectors; int /*<<< orphan*/  remaining; TYPE_4__* devs; } ;
struct page {int dummy; } ;
struct mddev {int /*<<< orphan*/  recovery; int /*<<< orphan*/  resync_mismatches; struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; scalar_t__ data_offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  mddev; } ;
struct TYPE_6__ {int bi_size; int /*<<< orphan*/  bi_sector; scalar_t__ bi_idx; } ;
struct bio {scalar_t__ bi_end_io; TYPE_2__ bi_iter; int /*<<< orphan*/  bi_opf; struct resync_pages* bi_private; int /*<<< orphan*/  bi_status; } ;
struct TYPE_8__ {int devnum; struct bio* bio; struct bio* repl_bio; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_1__* replacement; struct md_rdev* rdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  MD_FAILFAST ; 
 int /*<<< orphan*/  MD_RECOVERY_CHECK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ end_sync_read ; 
 scalar_t__ end_sync_write ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 struct resync_pages* FUNC10 (struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*,struct resync_pages*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct r10bio*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct mddev *mddev, struct r10bio *r10_bio)
{
	struct r10conf *conf = mddev->private;
	int i, first;
	struct bio *tbio, *fbio;
	int vcnt;
	struct page **tpages, **fpages;

	FUNC3(&r10_bio->remaining, 1);

	/* find the first device with a block */
	for (i=0; i<conf->copies; i++)
		if (!r10_bio->devs[i].bio->bi_status)
			break;

	if (i == conf->copies)
		goto done;

	first = i;
	fbio = r10_bio->devs[i].bio;
	fbio->bi_iter.bi_size = r10_bio->sectors << 9;
	fbio->bi_iter.bi_idx = 0;
	fpages = FUNC10(fbio)->pages;

	vcnt = (r10_bio->sectors + (PAGE_SIZE >> 9) - 1) >> (PAGE_SHIFT - 9);
	/* now find blocks with errors */
	for (i=0 ; i < conf->copies ; i++) {
		int  j, d;
		struct md_rdev *rdev;
		struct resync_pages *rp;

		tbio = r10_bio->devs[i].bio;

		if (tbio->bi_end_io != end_sync_read)
			continue;
		if (i == first)
			continue;

		tpages = FUNC10(tbio)->pages;
		d = r10_bio->devs[i].devnum;
		rdev = conf->mirrors[d].rdev;
		if (!r10_bio->devs[i].bio->bi_status) {
			/* We know that the bi_io_vec layout is the same for
			 * both 'first' and 'i', so we just compare them.
			 * All vec entries are PAGE_SIZE;
			 */
			int sectors = r10_bio->sectors;
			for (j = 0; j < vcnt; j++) {
				int len = PAGE_SIZE;
				if (sectors < (len / 512))
					len = sectors * 512;
				if (FUNC15(FUNC16(fpages[j]),
					   FUNC16(tpages[j]),
					   len))
					break;
				sectors -= len/512;
			}
			if (j == vcnt)
				continue;
			FUNC0(r10_bio->sectors, &mddev->resync_mismatches);
			if (FUNC18(MD_RECOVERY_CHECK, &mddev->recovery))
				/* Don't fix anything. */
				continue;
		} else if (FUNC18(FailFast, &rdev->flags)) {
			/* Just give up on this device */
			FUNC13(rdev->mddev, rdev);
			continue;
		}
		/* Ok, we need to write this bio, either to correct an
		 * inconsistency or to correct an unreadable block.
		 * First we need to fixup bv_offset, bv_len and
		 * bi_vecs, as the read request might have corrupted these
		 */
		rp = FUNC10(tbio);
		FUNC5(tbio);

		FUNC11(tbio, rp, fbio->bi_iter.bi_size);

		rp->raid_bio = r10_bio;
		tbio->bi_private = rp;
		tbio->bi_iter.bi_sector = r10_bio->devs[i].addr;
		tbio->bi_end_io = end_sync_write;
		FUNC8(tbio, REQ_OP_WRITE, 0);

		FUNC4(tbio, fbio);

		FUNC2(&conf->mirrors[d].rdev->nr_pending);
		FUNC2(&r10_bio->remaining);
		FUNC14(conf->mirrors[d].rdev->bdev, FUNC6(tbio));

		if (FUNC18(FailFast, &conf->mirrors[d].rdev->flags))
			tbio->bi_opf |= MD_FAILFAST;
		tbio->bi_iter.bi_sector += conf->mirrors[d].rdev->data_offset;
		FUNC7(tbio, conf->mirrors[d].rdev->bdev);
		FUNC9(tbio);
	}

	/* Now write out to any replacement devices
	 * that are active
	 */
	for (i = 0; i < conf->copies; i++) {
		int d;

		tbio = r10_bio->devs[i].repl_bio;
		if (!tbio || !tbio->bi_end_io)
			continue;
		if (r10_bio->devs[i].bio->bi_end_io != end_sync_write
		    && r10_bio->devs[i].bio != fbio)
			FUNC4(tbio, fbio);
		d = r10_bio->devs[i].devnum;
		FUNC2(&r10_bio->remaining);
		FUNC14(conf->mirrors[d].replacement->bdev,
			     FUNC6(tbio));
		FUNC9(tbio);
	}

done:
	if (FUNC1(&r10_bio->remaining)) {
		FUNC12(mddev, r10_bio->sectors, 1);
		FUNC17(r10_bio);
	}
}