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
struct stripe_head {size_t pd_idx; int /*<<< orphan*/  lru; TYPE_2__* dev; int /*<<< orphan*/  state; } ;
struct r5l_recovery_ctx {int /*<<< orphan*/  pos; int /*<<< orphan*/  meta_page; } ;
struct r5l_payload_flush {int /*<<< orphan*/  size; int /*<<< orphan*/ * flush_stripes; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct r5l_payload_data_parity {int /*<<< orphan*/  size; TYPE_3__ header; int /*<<< orphan*/  location; } ;
struct r5l_meta_block {int /*<<< orphan*/  meta_size; } ;
struct r5l_log {TYPE_1__* rdev; } ;
struct r5conf {int min_nr_stripes; int /*<<< orphan*/  max_nr_stripes; } ;
struct mddev {struct r5conf* private; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {struct mddev* mddev; } ;

/* Variables and functions */
 int BLOCK_SECTORS ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 scalar_t__ R5LOG_PAYLOAD_DATA ; 
 scalar_t__ R5LOG_PAYLOAD_FLUSH ; 
 scalar_t__ R5LOG_PAYLOAD_PARITY ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
 struct r5l_meta_block* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 struct stripe_head* FUNC11 (struct r5conf*,int /*<<< orphan*/ ,int) ; 
 struct stripe_head* FUNC12 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct list_head*,struct r5l_recovery_ctx*) ; 
 int /*<<< orphan*/  FUNC14 (struct r5l_log*,struct stripe_head*,struct r5l_recovery_ctx*,struct r5l_payload_data_parity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct r5l_log*,struct stripe_head*,struct r5l_recovery_ctx*,struct r5l_payload_data_parity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct r5conf*,struct stripe_head*,struct r5l_recovery_ctx*) ; 
 int /*<<< orphan*/  FUNC17 (struct stripe_head*) ; 
 int FUNC18 (struct r5l_log*,struct r5l_recovery_ctx*) ; 
 int /*<<< orphan*/  FUNC19 (struct r5l_log*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct r5conf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct stripe_head*) ; 
 int FUNC22 (struct mddev*,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC24(struct r5l_log *log,
				struct r5l_recovery_ctx *ctx,
				struct list_head *cached_stripe_list)
{
	struct mddev *mddev = log->rdev->mddev;
	struct r5conf *conf = mddev->private;
	struct r5l_meta_block *mb;
	struct r5l_payload_data_parity *payload;
	struct r5l_payload_flush *payload_flush;
	int mb_offset;
	sector_t log_offset;
	sector_t stripe_sect;
	struct stripe_head *sh;
	int ret;

	/*
	 * for mismatch in data blocks, we will drop all data in this mb, but
	 * we will still read next mb for other data with FLUSH flag, as
	 * io_unit could finish out of order.
	 */
	ret = FUNC18(log, ctx);
	if (ret == -EINVAL)
		return -EAGAIN;
	else if (ret)
		return ret;   /* -ENOMEM duo to alloc_page() failed */

	mb = FUNC8(ctx->meta_page);
	mb_offset = sizeof(struct r5l_meta_block);
	log_offset = FUNC19(log, ctx->pos, BLOCK_SECTORS);

	while (mb_offset < FUNC2(mb->meta_size)) {
		int dd;

		payload = (void *)mb + mb_offset;
		payload_flush = (void *)mb + mb_offset;

		if (FUNC1(payload->header.type) == R5LOG_PAYLOAD_FLUSH) {
			int i, count;

			count = FUNC2(payload_flush->size) / sizeof(__le64);
			for (i = 0; i < count; ++i) {
				stripe_sect = FUNC3(payload_flush->flush_stripes[i]);
				sh = FUNC12(cached_stripe_list,
								stripe_sect);
				if (sh) {
					FUNC0(FUNC23(STRIPE_R5C_CACHING, &sh->state));
					FUNC17(sh);
					FUNC5(&sh->lru);
					FUNC21(sh);
				}
			}

			mb_offset += sizeof(struct r5l_payload_flush) +
				FUNC2(payload_flush->size);
			continue;
		}

		/* DATA or PARITY payload */
		stripe_sect = (FUNC1(payload->header.type) == R5LOG_PAYLOAD_DATA) ?
			FUNC20(
				conf, FUNC3(payload->location), 0, &dd,
				NULL)
			: FUNC3(payload->location);

		sh = FUNC12(cached_stripe_list,
						stripe_sect);

		if (!sh) {
			sh = FUNC11(conf, stripe_sect, 1);
			/*
			 * cannot get stripe from raid5_get_active_stripe
			 * try replay some stripes
			 */
			if (!sh) {
				FUNC13(
					cached_stripe_list, ctx);
				sh = FUNC11(
					conf, stripe_sect, 1);
			}
			if (!sh) {
				int new_size = conf->min_nr_stripes * 2;
				FUNC9("md/raid:%s: Increasing stripe cache size to %d to recovery data on journal.\n",
					FUNC7(mddev),
					new_size);
				ret = FUNC22(mddev, new_size);
				if (conf->min_nr_stripes <= new_size / 2) {
					FUNC10("md/raid:%s: Cannot increase cache size, ret=%d, new_size=%d, min_nr_stripes=%d, max_nr_stripes=%d\n",
						FUNC7(mddev),
						ret,
						new_size,
						conf->min_nr_stripes,
						conf->max_nr_stripes);
					return -ENOMEM;
				}
				sh = FUNC11(
					conf, stripe_sect, 0);
			}
			if (!sh) {
				FUNC10("md/raid:%s: Cannot get enough stripes due to memory pressure. Recovery failed.\n",
					FUNC7(mddev));
				return -ENOMEM;
			}
			FUNC4(&sh->lru, cached_stripe_list);
		}

		if (FUNC1(payload->header.type) == R5LOG_PAYLOAD_DATA) {
			if (!FUNC23(STRIPE_R5C_CACHING, &sh->state) &&
			    FUNC23(R5_Wantwrite, &sh->dev[sh->pd_idx].flags)) {
				FUNC16(conf, sh, ctx);
				FUNC6(&sh->lru, cached_stripe_list);
			}
			FUNC14(log, sh, ctx, payload,
					       log_offset);
		} else if (FUNC1(payload->header.type) == R5LOG_PAYLOAD_PARITY)
			FUNC15(log, sh, ctx, payload,
						 log_offset);
		else
			return -EINVAL;

		log_offset = FUNC19(log, log_offset,
					  FUNC2(payload->size));

		mb_offset += sizeof(struct r5l_payload_data_parity) +
			sizeof(__le32) *
			(FUNC2(payload->size) >> (PAGE_SHIFT - 9));
	}

	return 0;
}