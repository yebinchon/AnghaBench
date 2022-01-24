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
struct stripe_head {int disks; int pd_idx; int qd_idx; int /*<<< orphan*/  r5c; int /*<<< orphan*/  log_start; struct r5l_io_unit* log_io; int /*<<< orphan*/  log_list; TYPE_1__* dev; int /*<<< orphan*/  sector; int /*<<< orphan*/  state; } ;
struct r5l_payload_data_parity {int dummy; } ;
struct r5l_log {scalar_t__ r5c_journal_mode; int /*<<< orphan*/  stripe_in_journal_count; int /*<<< orphan*/  stripe_in_journal_lock; int /*<<< orphan*/  stripe_in_journal_list; struct r5l_io_unit* current_io; } ;
struct r5l_io_unit {int has_flush; int has_fua; int /*<<< orphan*/  log_start; int /*<<< orphan*/  pending_stripe; int /*<<< orphan*/  stripe_list; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  page; int /*<<< orphan*/  log_checksum; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MaxSector ; 
 scalar_t__ R5C_JOURNAL_MODE_WRITE_BACK ; 
 scalar_t__ R5C_JOURNAL_MODE_WRITE_THROUGH ; 
 int /*<<< orphan*/  R5LOG_PAYLOAD_DATA ; 
 int /*<<< orphan*/  R5LOG_PAYLOAD_PARITY ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_WantFUA ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  STRIPE_R5C_PREFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct r5l_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r5l_log*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct r5l_log*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe_head*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct r5l_log *log, struct stripe_head *sh,
			   int data_pages, int parity_pages)
{
	int i;
	int meta_size;
	int ret;
	struct r5l_io_unit *io;

	meta_size =
		((sizeof(struct r5l_payload_data_parity) + sizeof(__le32))
		 * data_pages) +
		sizeof(struct r5l_payload_data_parity) +
		sizeof(__le32) * parity_pages;

	ret = FUNC6(log, meta_size);
	if (ret)
		return ret;

	io = log->current_io;

	if (FUNC10(STRIPE_R5C_PREFLUSH, &sh->state))
		io->has_flush = 1;

	for (i = 0; i < sh->disks; i++) {
		if (!FUNC11(R5_Wantwrite, &sh->dev[i].flags) ||
		    FUNC11(R5_InJournal, &sh->dev[i].flags))
			continue;
		if (i == sh->pd_idx || i == sh->qd_idx)
			continue;
		if (FUNC11(R5_WantFUA, &sh->dev[i].flags) &&
		    log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_BACK) {
			io->has_fua = 1;
			/*
			 * we need to flush journal to make sure recovery can
			 * reach the data with fua flag
			 */
			io->has_flush = 1;
		}
		FUNC4(log, R5LOG_PAYLOAD_DATA,
					FUNC7(sh, i, 0),
					sh->dev[i].log_checksum, 0, false);
		FUNC5(log, sh->dev[i].page);
	}

	if (parity_pages == 2) {
		FUNC4(log, R5LOG_PAYLOAD_PARITY,
					sh->sector, sh->dev[sh->pd_idx].log_checksum,
					sh->dev[sh->qd_idx].log_checksum, true);
		FUNC5(log, sh->dev[sh->pd_idx].page);
		FUNC5(log, sh->dev[sh->qd_idx].page);
	} else if (parity_pages == 1) {
		FUNC4(log, R5LOG_PAYLOAD_PARITY,
					sh->sector, sh->dev[sh->pd_idx].log_checksum,
					0, false);
		FUNC5(log, sh->dev[sh->pd_idx].page);
	} else  /* Just writing data, not parity, in caching phase */
		FUNC0(parity_pages != 0);

	FUNC2(&sh->log_list, &io->stripe_list);
	FUNC1(&io->pending_stripe);
	sh->log_io = io;

	if (log->r5c_journal_mode == R5C_JOURNAL_MODE_WRITE_THROUGH)
		return 0;

	if (sh->log_start == MaxSector) {
		FUNC0(!FUNC3(&sh->r5c));
		sh->log_start = io->log_start;
		FUNC8(&log->stripe_in_journal_lock);
		FUNC2(&sh->r5c,
			      &log->stripe_in_journal_list);
		FUNC9(&log->stripe_in_journal_lock);
		FUNC1(&log->stripe_in_journal_count);
	}
	return 0;
}