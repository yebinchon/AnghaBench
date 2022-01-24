#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct r5conf {int /*<<< orphan*/  wait_for_quiescent; struct ppl_conf* log_private; } ;
struct ppl_log {int /*<<< orphan*/  io_list_lock; } ;
struct ppl_conf {int count; struct ppl_log* child_logs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r5conf*,struct ppl_log*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct r5conf *conf, int quiesce)
{
	struct ppl_conf *ppl_conf = conf->log_private;
	int i;

	if (quiesce) {
		for (i = 0; i < ppl_conf->count; i++) {
			struct ppl_log *log = &ppl_conf->child_logs[i];

			FUNC1(&log->io_list_lock);
			FUNC3(conf->wait_for_quiescent,
					    FUNC0(conf, log),
					    log->io_list_lock);
			FUNC2(&log->io_list_lock);
		}
	}
}