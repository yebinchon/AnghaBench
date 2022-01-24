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
struct cec_adapter {int is_configuring; int /*<<< orphan*/  lock; int /*<<< orphan*/  config_completion; int /*<<< orphan*/ * kthread_config; int /*<<< orphan*/  name; scalar_t__ is_configured; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  cec_config_thread_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct cec_adapter*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cec_adapter *adap, bool block)
{
	if (FUNC1(adap->is_configuring || adap->is_configured))
		return;

	FUNC2(&adap->config_completion);

	/* Ready to kick off the thread */
	adap->is_configuring = true;
	adap->kthread_config = FUNC3(cec_config_thread_func, adap,
					   "ceccfg-%s", adap->name);
	if (FUNC0(adap->kthread_config)) {
		adap->kthread_config = NULL;
	} else if (block) {
		FUNC5(&adap->lock);
		FUNC6(&adap->config_completion);
		FUNC4(&adap->lock);
	}
}