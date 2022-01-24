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
struct cec_notifier {int /*<<< orphan*/  lock; TYPE_1__* cec_adap; int /*<<< orphan*/ * callback; } ;
struct TYPE_2__ {int /*<<< orphan*/ * notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cec_notifier*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cec_notifier *n)
{
	/* Do nothing unless cec_notifier_register was called first */
	if (!n->callback)
		return;

	FUNC1(&n->lock);
	n->callback = NULL;
	n->cec_adap->notifier = NULL;
	n->cec_adap = NULL;
	FUNC2(&n->lock);
	FUNC0(n);
}