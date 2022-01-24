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
struct stripe_head {int disks; scalar_t__ log_start; int /*<<< orphan*/  log_list; int /*<<< orphan*/  count; int /*<<< orphan*/  state; TYPE_1__* dev; struct r5conf* raid_conf; } ;
struct r5l_log {scalar_t__ last_checkpoint; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  io_list_lock; int /*<<< orphan*/  no_mem_stripes; int /*<<< orphan*/  uuid_checksum; } ;
struct r5conf {int /*<<< orphan*/  cache_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  log_checksum; int /*<<< orphan*/  page; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MaxSector ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  R5C_LOG_CRITICAL ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct r5l_log*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct r5l_log*,int) ; 
 int FUNC13 (struct r5l_log*,struct stripe_head*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC17(struct r5l_log *log, struct stripe_head *sh)
{
	struct r5conf *conf = sh->raid_conf;
	int pages = 0;
	int reserve;
	int i;
	int ret = 0;

	FUNC1(!log);

	for (i = 0; i < sh->disks; i++) {
		void *addr;

		if (!FUNC16(R5_Wantwrite, &sh->dev[i].flags))
			continue;
		addr = FUNC6(sh->dev[i].page);
		sh->dev[i].log_checksum = FUNC5(log->uuid_checksum,
						    addr, PAGE_SIZE);
		FUNC7(addr);
		pages++;
	}
	FUNC2(pages == 0);

	/*
	 * The stripe must enter state machine again to call endio, so
	 * don't delay.
	 */
	FUNC4(STRIPE_DELAYED, &sh->state);
	FUNC3(&sh->count);

	FUNC9(&log->io_mutex);
	/* meta + data */
	reserve = (1 + pages) << (PAGE_SHIFT - 9);

	if (FUNC16(R5C_LOG_CRITICAL, &conf->cache_state) &&
	    sh->log_start == MaxSector)
		FUNC11(log, sh);
	else if (!FUNC12(log, reserve)) {
		if (sh->log_start == log->last_checkpoint)
			FUNC0();
		else
			FUNC11(log, sh);
	} else {
		ret = FUNC13(log, sh, pages, 0);
		if (ret) {
			FUNC14(&log->io_list_lock);
			FUNC8(&sh->log_list, &log->no_mem_stripes);
			FUNC15(&log->io_list_lock);
		}
	}

	FUNC10(&log->io_mutex);
	return 0;
}