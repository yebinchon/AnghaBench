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
struct r5conf {struct ppl_conf* log_private; } ;
struct ppl_log {int /*<<< orphan*/  io_mutex; } ;
struct ppl_conf {int count; struct ppl_log* child_logs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ppl_log*) ; 

void FUNC3(struct r5conf *conf)
{
	struct ppl_conf *ppl_conf = conf->log_private;
	struct ppl_log *log;
	int i;

	for (i = 0; i < ppl_conf->count; i++) {
		log = &ppl_conf->child_logs[i];

		FUNC0(&log->io_mutex);
		FUNC2(log);
		FUNC1(&log->io_mutex);
	}
}