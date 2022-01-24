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
struct stripe_head {size_t pd_idx; int /*<<< orphan*/  log_list; int /*<<< orphan*/  count; int /*<<< orphan*/  state; TYPE_1__* dev; int /*<<< orphan*/  ppl_page; struct ppl_io_unit* ppl_io; } ;
struct r5conf {struct ppl_conf* log_private; } ;
struct ppl_log {int /*<<< orphan*/  io_mutex; TYPE_2__* rdev; } ;
struct ppl_io_unit {int dummy; } ;
struct ppl_conf {int /*<<< orphan*/  no_mem_stripes_lock; int /*<<< orphan*/  no_mem_stripes; struct ppl_log* child_logs; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_Wantwrite ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_LOG_TRAPPED ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ppl_log*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct r5conf *conf, struct stripe_head *sh)
{
	struct ppl_conf *ppl_conf = conf->log_private;
	struct ppl_io_unit *io = sh->ppl_io;
	struct ppl_log *log;

	if (io || FUNC9(STRIPE_SYNCING, &sh->state) || !sh->ppl_page ||
	    !FUNC9(R5_Wantwrite, &sh->dev[sh->pd_idx].flags) ||
	    !FUNC9(R5_Insync, &sh->dev[sh->pd_idx].flags)) {
		FUNC1(STRIPE_LOG_TRAPPED, &sh->state);
		return -EAGAIN;
	}

	log = &ppl_conf->child_logs[sh->pd_idx];

	FUNC3(&log->io_mutex);

	if (!log->rdev || FUNC9(Faulty, &log->rdev->flags)) {
		FUNC4(&log->io_mutex);
		return -EAGAIN;
	}

	FUNC6(STRIPE_LOG_TRAPPED, &sh->state);
	FUNC1(STRIPE_DELAYED, &sh->state);
	FUNC0(&sh->count);

	if (FUNC5(log, sh)) {
		FUNC7(&ppl_conf->no_mem_stripes_lock);
		FUNC2(&sh->log_list, &ppl_conf->no_mem_stripes);
		FUNC8(&ppl_conf->no_mem_stripes_lock);
	}

	FUNC4(&log->io_mutex);

	return 0;
}