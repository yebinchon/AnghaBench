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
struct cec_notifier {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  cec_notifier_release ; 
 int /*<<< orphan*/  cec_notifiers_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct cec_notifier *n)
{
	FUNC1(&cec_notifiers_lock);
	FUNC0(&n->kref, cec_notifier_release);
	FUNC2(&cec_notifiers_lock);
}