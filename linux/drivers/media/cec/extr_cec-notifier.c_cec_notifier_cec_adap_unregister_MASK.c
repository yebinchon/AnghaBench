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
struct cec_notifier {int /*<<< orphan*/  lock; int /*<<< orphan*/ * callback; TYPE_1__* cec_adap; } ;
struct TYPE_2__ {int /*<<< orphan*/ * notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cec_notifier*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cec_notifier *n)
{
	if (!n)
		return;

	FUNC1(&n->lock);
	n->cec_adap->notifier = NULL;
	n->cec_adap = NULL;
	n->callback = NULL;
	FUNC2(&n->lock);
	FUNC0(n);
}