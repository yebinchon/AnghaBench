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
struct cec_log_addrs {int dummy; } ;
struct cec_adapter {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct cec_adapter*,struct cec_log_addrs*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cec_adapter *adap,
		    struct cec_log_addrs *log_addrs, bool block)
{
	int err;

	FUNC1(&adap->lock);
	err = FUNC0(adap, log_addrs, block);
	FUNC2(&adap->lock);
	return err;
}