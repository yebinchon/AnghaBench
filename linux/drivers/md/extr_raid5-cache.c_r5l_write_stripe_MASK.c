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
struct stripe_head {size_t pd_idx; int disks; scalar_t__ qd_idx; scalar_t__ log_start; int /*<<< orphan*/  log_list; int /*<<< orphan*/  count; int /*<<< orphan*/  state; TYPE_1__* dev; scalar_t__ log_io; struct r5conf* raid_conf; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; scalar_t__ last_checkpoint; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  io_list_lock; int /*<<< orphan*/  no_mem_stripes; int /*<<< orphan*/  uuid_checksum; } ;
struct r5conf {int /*<<< orphan*/  cache_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  log_checksum; int /*<<< orphan*/  page; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EAGAIN ; 
 scalar_t__ MaxSector ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ; 
 int /*<<< orphan*/  R5C_LOG_CRITICAL ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_LOG_TRAPPED ; 
 int /*<<< orphan*/  STRIPE_R5C_CACHING ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct r5l_log*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct r5l_log*,int) ; 
 int FUNC12 (struct r5l_log*,struct stripe_head*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct r5l_log*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC18(struct r5l_log *log, struct stripe_head *sh)
{
	struct r5conf *conf = sh->raid_conf;
	int write_disks = 0;
	int data_pages, parity_pages;
	int reserve;
	int i;
	int ret = 0;
	bool wake_reclaim = false;

	if (!log)
		return -EAGAIN;
	/* Don't support stripe batch */
	if (sh->log_io || !FUNC17(R5_Wantwrite, &sh->dev[sh->pd_idx].flags) ||
	    FUNC17(STRIPE_SYNCING, &sh->state)) {
		/* the stripe is written to log, we start writing it to raid */
		FUNC3(STRIPE_LOG_TRAPPED, &sh->state);
		return -EAGAIN;
	}

	FUNC1(FUNC17(STRIPE_R5C_CACHING, &sh->state));

	for (i = 0; i < sh->disks; i++) {
		void *addr;

		if (!FUNC17(R5_Wantwrite, &sh->dev[i].flags) ||
		    FUNC17(R5_InJournal, &sh->dev[i].flags))
			continue;

		write_disks++;
		/* checksum is already calculated in last run */
		if (FUNC17(STRIPE_LOG_TRAPPED, &sh->state))
			continue;
		addr = FUNC5(sh->dev[i].page);
		sh->dev[i].log_checksum = FUNC4(log->uuid_checksum,
						    addr, PAGE_SIZE);
		FUNC6(addr);
	}
	parity_pages = 1 + !!(sh->qd_idx >= 0);
	data_pages = write_disks - parity_pages;

	FUNC14(STRIPE_LOG_TRAPPED, &sh->state);
	/*
	 * The stripe must enter state machine again to finish the write, so
	 * don't delay.
	 */
	FUNC3(STRIPE_DELAYED, &sh->state);
	FUNC2(&sh->count);

	FUNC8(&log->io_mutex);
	/* meta + data */
	reserve = (1 + write_disks) << (PAGE_SHIFT - 9);

	if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH) {
		if (!FUNC11(log, reserve)) {
			FUNC10(log, sh);
			wake_reclaim = true;
		} else {
			ret = FUNC12(log, sh, data_pages, parity_pages);
			if (ret) {
				FUNC15(&log->io_list_lock);
				FUNC7(&sh->log_list,
					      &log->no_mem_stripes);
				FUNC16(&log->io_list_lock);
			}
		}
	} else {  /* R5C_JOURNAL_MODE_WRITE_BACK */
		/*
		 * log space critical, do not process stripes that are
		 * not in cache yet (sh->log_start == MaxSector).
		 */
		if (FUNC17(R5C_LOG_CRITICAL, &conf->cache_state) &&
		    sh->log_start == MaxSector) {
			FUNC10(log, sh);
			wake_reclaim = true;
			reserve = 0;
		} else if (!FUNC11(log, reserve)) {
			if (sh->log_start == log->last_checkpoint)
				FUNC0();
			else
				FUNC10(log, sh);
		} else {
			ret = FUNC12(log, sh, data_pages, parity_pages);
			if (ret) {
				FUNC15(&log->io_list_lock);
				FUNC7(&sh->log_list,
					      &log->no_mem_stripes);
				FUNC16(&log->io_list_lock);
			}
		}
	}

	FUNC9(&log->io_mutex);
	if (wake_reclaim)
		FUNC13(log, reserve);
	return 0;
}