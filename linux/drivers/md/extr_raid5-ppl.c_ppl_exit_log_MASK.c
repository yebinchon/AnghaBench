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
struct ppl_conf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ppl_conf*) ; 

void FUNC1(struct r5conf *conf)
{
	struct ppl_conf *ppl_conf = conf->log_private;

	if (ppl_conf) {
		FUNC0(ppl_conf);
		conf->log_private = NULL;
	}
}