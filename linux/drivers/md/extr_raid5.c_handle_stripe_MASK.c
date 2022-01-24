#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {int uptodate; int failed; size_t* failed_num; scalar_t__ injournal; int dec_preread_active; int p_failed; int q_failed; int compute; scalar_t__ ops_request; scalar_t__ handle_bad_blocks; struct md_rdev* blocked_rdev; int /*<<< orphan*/  locked; scalar_t__ expanding; scalar_t__ expanded; scalar_t__ replacing; scalar_t__ syncing; scalar_t__ to_write; scalar_t__ non_overwrite; scalar_t__ to_read; scalar_t__ just_cached; scalar_t__ written; scalar_t__ log_failed; scalar_t__ to_fill; } ;
struct stripe_head {int disks; size_t pd_idx; size_t qd_idx; scalar_t__ reconstruct_state; scalar_t__ state; scalar_t__ sector; struct r5dev* dev; scalar_t__ check_state; int /*<<< orphan*/  log_io; int /*<<< orphan*/  count; int /*<<< orphan*/  stripe_lock; int /*<<< orphan*/  batch_head; struct r5conf* raid_conf; } ;
struct r5dev {scalar_t__ flags; scalar_t__ written; } ;
struct r5conf {int max_degraded; int level; int raid_disks; TYPE_2__* mddev; int /*<<< orphan*/  preread_active_stripes; TYPE_1__* disks; int /*<<< orphan*/  wait_for_overlap; int /*<<< orphan*/  reshape_stripes; int /*<<< orphan*/  log; } ;
struct md_rdev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  thread; scalar_t__ external; int /*<<< orphan*/  ro; scalar_t__ sb_flags; } ;
struct TYPE_6__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 scalar_t__ IO_THRESHOLD ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int /*<<< orphan*/  R5_Discard ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_MadeGood ; 
 int /*<<< orphan*/  R5_MadeGoodRepl ; 
 int /*<<< orphan*/  R5_NeedReplace ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  R5_ReWrite ; 
 int /*<<< orphan*/  R5_ReadError ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_WantReplace ; 
 int /*<<< orphan*/  R5_Wantread ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  R5_WriteError ; 
 int /*<<< orphan*/  STRIPE_ACTIVE ; 
 int /*<<< orphan*/  STRIPE_BATCH_ERR ; 
 int /*<<< orphan*/  STRIPE_BIOFILL_RUN ; 
 int /*<<< orphan*/  STRIPE_COMPUTE_RUN ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_DISCARD ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_EXPAND_READY ; 
 int /*<<< orphan*/  STRIPE_EXPAND_SOURCE ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_INSYNC ; 
 int /*<<< orphan*/  STRIPE_LOG_TRAPPED ; 
 int /*<<< orphan*/  STRIPE_OP_BIOFILL ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  STRIPE_R5C_FULL_STRIPE ; 
 int /*<<< orphan*/  STRIPE_R5C_PARTIAL_STRIPE ; 
 int /*<<< orphan*/  STRIPE_REPLACED ; 
 int /*<<< orphan*/  STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  STRIPE_SYNC_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct r5conf*,struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct r5conf*,struct stripe_head*,int) ; 
 int FUNC15 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct r5conf*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct stripe_head*,struct stripe_head_state*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC21 (struct md_rdev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC25 (struct r5conf*,struct stripe_head*,struct stripe_head_state*) ; 
 int /*<<< orphan*/  FUNC26 (struct r5conf*,struct stripe_head*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int FUNC28 (struct r5conf*,struct stripe_head*,struct stripe_head_state*,int) ; 
 struct stripe_head* FUNC29 (struct r5conf*,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC31 (struct stripe_head*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (struct md_rdev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (struct md_rdev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC34 (struct md_rdev*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reconstruct_state_drain_result ; 
 void* reconstruct_state_idle ; 
 scalar_t__ reconstruct_state_prexor_drain_result ; 
 scalar_t__ reconstruct_state_result ; 
 int /*<<< orphan*/  FUNC35 (struct stripe_head*,struct stripe_head_state*,int,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__,struct r5conf*,int /*<<< orphan*/ ,struct stripe_head*) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC44 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC46(struct stripe_head *sh)
{
	struct stripe_head_state s;
	struct r5conf *conf = sh->raid_conf;
	int i;
	int prexor;
	int disks = sh->disks;
	struct r5dev *pdev, *qdev;

	FUNC8(STRIPE_HANDLE, &sh->state);
	if (FUNC42(STRIPE_ACTIVE, &sh->state)) {
		/* already being handled, ensure it gets handled
		 * again when current action finishes */
		FUNC36(STRIPE_HANDLE, &sh->state);
		return;
	}

	if (FUNC7(sh) ) {
		FUNC9(STRIPE_ACTIVE, &sh->state);
		return;
	}

	if (FUNC40(STRIPE_BATCH_ERR, &sh->state))
		FUNC6(sh, 0);

	if (FUNC43(STRIPE_SYNC_REQUESTED, &sh->state) && !sh->batch_head) {
		FUNC37(&sh->stripe_lock);
		/*
		 * Cannot process 'sync' concurrently with 'discard'.
		 * Flush data in r5cache before 'sync'.
		 */
		if (!FUNC43(STRIPE_R5C_PARTIAL_STRIPE, &sh->state) &&
		    !FUNC43(STRIPE_R5C_FULL_STRIPE, &sh->state) &&
		    !FUNC43(STRIPE_DISCARD, &sh->state) &&
		    FUNC40(STRIPE_SYNC_REQUESTED, &sh->state)) {
			FUNC36(STRIPE_SYNCING, &sh->state);
			FUNC8(STRIPE_INSYNC, &sh->state);
			FUNC8(STRIPE_REPLACED, &sh->state);
		}
		FUNC38(&sh->stripe_lock);
	}
	FUNC8(STRIPE_DELAYED, &sh->state);

	FUNC24("handling stripe %llu, state=%#lx cnt=%d, "
		"pd_idx=%d, qd_idx=%d\n, check:%d, reconstruct:%d\n",
	       (unsigned long long)sh->sector, sh->state,
	       FUNC5(&sh->count), sh->pd_idx, sh->qd_idx,
	       sh->check_state, sh->reconstruct_state);

	FUNC2(sh, &s);

	if (FUNC43(STRIPE_LOG_TRAPPED, &sh->state))
		goto finish;

	if (s.handle_bad_blocks ||
	    FUNC43(MD_SB_CHANGE_PENDING, &conf->mddev->sb_flags)) {
		FUNC36(STRIPE_HANDLE, &sh->state);
		goto finish;
	}

	if (FUNC44(s.blocked_rdev)) {
		if (s.syncing || s.expanding || s.expanded ||
		    s.replacing || s.to_write || s.written) {
			FUNC36(STRIPE_HANDLE, &sh->state);
			goto finish;
		}
		/* There is nothing for the blocked_rdev to block */
		FUNC33(s.blocked_rdev, conf->mddev);
		s.blocked_rdev = NULL;
	}

	if (s.to_fill && !FUNC43(STRIPE_BIOFILL_RUN, &sh->state)) {
		FUNC36(STRIPE_OP_BIOFILL, &s.ops_request);
		FUNC36(STRIPE_BIOFILL_RUN, &sh->state);
	}

	FUNC24("locked=%d uptodate=%d to_read=%d"
	       " to_write=%d failed=%d failed_num=%d,%d\n",
	       s.locked, s.uptodate, s.to_read, s.to_write, s.failed,
	       s.failed_num[0], s.failed_num[1]);
	/*
	 * check if the array has lost more than max_degraded devices and,
	 * if so, some requests might need to be failed.
	 *
	 * When journal device failed (log_failed), we will only process
	 * the stripe if there is data need write to raid disks
	 */
	if (s.failed > conf->max_degraded ||
	    (s.log_failed && s.injournal == 0)) {
		sh->check_state = 0;
		sh->reconstruct_state = 0;
		FUNC6(sh, 0);
		if (s.to_read+s.to_write+s.written)
			FUNC10(conf, sh, &s, disks);
		if (s.syncing + s.replacing)
			FUNC11(conf, sh, &s);
	}

	/* Now we check to see if any write operations have recently
	 * completed
	 */
	prexor = 0;
	if (sh->reconstruct_state == reconstruct_state_prexor_drain_result)
		prexor = 1;
	if (sh->reconstruct_state == reconstruct_state_drain_result ||
	    sh->reconstruct_state == reconstruct_state_prexor_drain_result) {
		sh->reconstruct_state = reconstruct_state_idle;

		/* All the 'written' buffers and the parity block are ready to
		 * be written back to disk
		 */
		FUNC0(!FUNC43(R5_UPTODATE, &sh->dev[sh->pd_idx].flags) &&
		       !FUNC43(R5_Discard, &sh->dev[sh->pd_idx].flags));
		FUNC0(sh->qd_idx >= 0 &&
		       !FUNC43(R5_UPTODATE, &sh->dev[sh->qd_idx].flags) &&
		       !FUNC43(R5_Discard, &sh->dev[sh->qd_idx].flags));
		for (i = disks; i--; ) {
			struct r5dev *dev = &sh->dev[i];
			if (FUNC43(R5_LOCKED, &dev->flags) &&
				(i == sh->pd_idx || i == sh->qd_idx ||
				 dev->written || FUNC43(R5_InJournal,
							  &dev->flags))) {
				FUNC24("Writing block %d\n", i);
				FUNC36(R5_Wantwrite, &dev->flags);
				if (prexor)
					continue;
				if (s.failed > 1)
					continue;
				if (!FUNC43(R5_Insync, &dev->flags) ||
				    ((i == sh->pd_idx || i == sh->qd_idx)  &&
				     s.failed == 0))
					FUNC36(STRIPE_INSYNC, &sh->state);
			}
		}
		if (FUNC40(STRIPE_PREREAD_ACTIVE, &sh->state))
			s.dec_preread_active = 1;
	}

	/*
	 * might be able to return some write requests if the parity blocks
	 * are safe, or on a failed drive
	 */
	pdev = &sh->dev[sh->pd_idx];
	s.p_failed = (s.failed >= 1 && s.failed_num[0] == sh->pd_idx)
		|| (s.failed >= 2 && s.failed_num[1] == sh->pd_idx);
	qdev = &sh->dev[sh->qd_idx];
	s.q_failed = (s.failed >= 1 && s.failed_num[0] == sh->qd_idx)
		|| (s.failed >= 2 && s.failed_num[1] == sh->qd_idx)
		|| conf->level < 6;

	if (s.written &&
	    (s.p_failed || ((FUNC43(R5_Insync, &pdev->flags)
			     && !FUNC43(R5_LOCKED, &pdev->flags)
			     && (FUNC43(R5_UPTODATE, &pdev->flags) ||
				 FUNC43(R5_Discard, &pdev->flags))))) &&
	    (s.q_failed || ((FUNC43(R5_Insync, &qdev->flags)
			     && !FUNC43(R5_LOCKED, &qdev->flags)
			     && (FUNC43(R5_UPTODATE, &qdev->flags) ||
				 FUNC43(R5_Discard, &qdev->flags))))))
		FUNC14(conf, sh, disks);

	if (s.just_cached)
		FUNC26(conf, sh, disks);
	FUNC18(sh);

	/* Now we might consider reading some blocks, either to check/generate
	 * parity, or to satisfy requests
	 * or to load a block that is being partially written.
	 */
	if (s.to_read || s.non_overwrite
	    || (conf->level == 6 && s.to_write && s.failed)
	    || (s.syncing && (s.uptodate + s.compute < disks))
	    || s.replacing
	    || s.expanding)
		FUNC17(sh, &s, disks);

	/*
	 * When the stripe finishes full journal write cycle (write to journal
	 * and raid disk), this is the clean up procedure so it is ready for
	 * next operation.
	 */
	FUNC25(conf, sh, &s);

	/*
	 * Now to consider new write requests, cache write back and what else,
	 * if anything should be read.  We do not handle new writes when:
	 * 1/ A 'write' operation (copy+xor) is already in flight.
	 * 2/ A 'check' operation is in flight, as it may clobber the parity
	 *    block.
	 * 3/ A r5c cache log write is in flight.
	 */

	if (!sh->reconstruct_state && !sh->check_state && !sh->log_io) {
		if (!FUNC27(conf->log)) {
			if (s.to_write)
				FUNC15(conf, sh, &s, disks);
		} else { /* write back cache */
			int ret = 0;

			/* First, try handle writes in caching phase */
			if (s.to_write)
				ret = FUNC28(conf, sh, &s,
							    disks);
			/*
			 * If caching phase failed: ret == -EAGAIN
			 *    OR
			 * stripe under reclaim: !caching && injournal
			 *
			 * fall back to handle_stripe_dirtying()
			 */
			if (ret == -EAGAIN ||
			    /* stripe under reclaim: !caching && injournal */
			    (!FUNC43(STRIPE_R5C_CACHING, &sh->state) &&
			     s.injournal > 0)) {
				ret = FUNC15(conf, sh, &s,
							     disks);
				if (ret == -EAGAIN)
					goto finish;
			}
		}
	}

	/* maybe we need to check and possibly fix the parity for this stripe
	 * Any reads will already have been scheduled, so we just see if enough
	 * data is available.  The parity check is held off while parity
	 * dependent operations are in flight.
	 */
	if (sh->check_state ||
	    (s.syncing && s.locked == 0 &&
	     !FUNC43(STRIPE_COMPUTE_RUN, &sh->state) &&
	     !FUNC43(STRIPE_INSYNC, &sh->state))) {
		if (conf->level == 6)
			FUNC13(conf, sh, &s, disks);
		else
			FUNC12(conf, sh, &s, disks);
	}

	if ((s.replacing || s.syncing) && s.locked == 0
	    && !FUNC43(STRIPE_COMPUTE_RUN, &sh->state)
	    && !FUNC43(STRIPE_REPLACED, &sh->state)) {
		/* Write out to replacement devices where possible */
		for (i = 0; i < conf->raid_disks; i++)
			if (FUNC43(R5_NeedReplace, &sh->dev[i].flags)) {
				FUNC1(!FUNC43(R5_UPTODATE, &sh->dev[i].flags));
				FUNC36(R5_WantReplace, &sh->dev[i].flags);
				FUNC36(R5_LOCKED, &sh->dev[i].flags);
				s.locked++;
			}
		if (s.replacing)
			FUNC36(STRIPE_INSYNC, &sh->state);
		FUNC36(STRIPE_REPLACED, &sh->state);
	}
	if ((s.syncing || s.replacing) && s.locked == 0 &&
	    !FUNC43(STRIPE_COMPUTE_RUN, &sh->state) &&
	    FUNC43(STRIPE_INSYNC, &sh->state)) {
		FUNC19(conf->mddev, STRIPE_SECTORS, 1);
		FUNC8(STRIPE_SYNCING, &sh->state);
		if (FUNC40(R5_Overlap, &sh->dev[sh->pd_idx].flags))
			FUNC45(&conf->wait_for_overlap);
	}

	/* If the failed drives are just a ReadError, then we might need
	 * to progress the repair/check process
	 */
	if (s.failed <= conf->max_degraded && !conf->mddev->ro)
		for (i = 0; i < s.failed; i++) {
			struct r5dev *dev = &sh->dev[s.failed_num[i]];
			if (FUNC43(R5_ReadError, &dev->flags)
			    && !FUNC43(R5_LOCKED, &dev->flags)
			    && FUNC43(R5_UPTODATE, &dev->flags)
				) {
				if (!FUNC43(R5_ReWrite, &dev->flags)) {
					FUNC36(R5_Wantwrite, &dev->flags);
					FUNC36(R5_ReWrite, &dev->flags);
					FUNC36(R5_LOCKED, &dev->flags);
					s.locked++;
				} else {
					/* let's read it back */
					FUNC36(R5_Wantread, &dev->flags);
					FUNC36(R5_LOCKED, &dev->flags);
					s.locked++;
				}
			}
		}

	/* Finish reconstruct operations initiated by the expansion process */
	if (sh->reconstruct_state == reconstruct_state_result) {
		struct stripe_head *sh_src
			= FUNC29(conf, sh->sector, 1, 1, 1);
		if (sh_src && FUNC43(STRIPE_EXPAND_SOURCE, &sh_src->state)) {
			/* sh cannot be written until sh_src has been read.
			 * so arrange for sh to be delayed a little
			 */
			FUNC36(STRIPE_DELAYED, &sh->state);
			FUNC36(STRIPE_HANDLE, &sh->state);
			if (!FUNC41(STRIPE_PREREAD_ACTIVE,
					      &sh_src->state))
				FUNC4(&conf->preread_active_stripes);
			FUNC30(sh_src);
			goto finish;
		}
		if (sh_src)
			FUNC30(sh_src);

		sh->reconstruct_state = reconstruct_state_idle;
		FUNC8(STRIPE_EXPANDING, &sh->state);
		for (i = conf->raid_disks; i--; ) {
			FUNC36(R5_Wantwrite, &sh->dev[i].flags);
			FUNC36(R5_LOCKED, &sh->dev[i].flags);
			s.locked++;
		}
	}

	if (s.expanded && FUNC43(STRIPE_EXPANDING, &sh->state) &&
	    !sh->reconstruct_state) {
		/* Need to write out all blocks after computing parity */
		sh->disks = conf->raid_disks;
		FUNC39(sh->sector, conf, 0, sh);
		FUNC35(sh, &s, 1, 1);
	} else if (s.expanded && !sh->reconstruct_state && s.locked == 0) {
		FUNC8(STRIPE_EXPAND_READY, &sh->state);
		FUNC3(&conf->reshape_stripes);
		FUNC45(&conf->wait_for_overlap);
		FUNC19(conf->mddev, STRIPE_SECTORS, 1);
	}

	if (s.expanding && s.locked == 0 &&
	    !FUNC43(STRIPE_COMPUTE_RUN, &sh->state))
		FUNC16(conf, sh);

finish:
	/* wait for this device to become unblocked */
	if (FUNC44(s.blocked_rdev)) {
		if (conf->mddev->external)
			FUNC21(s.blocked_rdev,
						 conf->mddev);
		else
			/* Internal metadata will immediately
			 * be written by raid5d, so we don't
			 * need to wait here.
			 */
			FUNC33(s.blocked_rdev,
					 conf->mddev);
	}

	if (s.handle_bad_blocks)
		for (i = disks; i--; ) {
			struct md_rdev *rdev;
			struct r5dev *dev = &sh->dev[i];
			if (FUNC40(R5_WriteError, &dev->flags)) {
				/* We own a safe reference to the rdev */
				rdev = conf->disks[i].rdev;
				if (!FUNC34(rdev, sh->sector,
							STRIPE_SECTORS, 0))
					FUNC20(conf->mddev, rdev);
				FUNC33(rdev, conf->mddev);
			}
			if (FUNC40(R5_MadeGood, &dev->flags)) {
				rdev = conf->disks[i].rdev;
				FUNC32(rdev, sh->sector,
						     STRIPE_SECTORS, 0);
				FUNC33(rdev, conf->mddev);
			}
			if (FUNC40(R5_MadeGoodRepl, &dev->flags)) {
				rdev = conf->disks[i].replacement;
				if (!rdev)
					/* rdev have been moved down */
					rdev = conf->disks[i].rdev;
				FUNC32(rdev, sh->sector,
						     STRIPE_SECTORS, 0);
				FUNC33(rdev, conf->mddev);
			}
		}

	if (s.ops_request)
		FUNC31(sh, s.ops_request);

	FUNC23(sh, &s);

	if (s.dec_preread_active) {
		/* We delay this until after ops_run_io so that if make_request
		 * is waiting on a flush, it won't continue until the writes
		 * have actually been submitted.
		 */
		FUNC3(&conf->preread_active_stripes);
		if (FUNC5(&conf->preread_active_stripes) <
		    IO_THRESHOLD)
			FUNC22(conf->mddev->thread);
	}

	FUNC9(STRIPE_ACTIVE, &sh->state);
}