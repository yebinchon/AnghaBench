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
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct devfreq {int /*<<< orphan*/  lock; TYPE_2__ dev; TYPE_1__* profile; int /*<<< orphan*/  node; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  devfreq_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devfreq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct devfreq* FUNC9 (struct device*) ; 

__attribute__((used)) static void FUNC10(struct device *dev)
{
	struct devfreq *devfreq = FUNC9(dev);

	FUNC6(&devfreq_list_lock);
	if (FUNC0(FUNC2(devfreq->dev.parent))) {
		FUNC7(&devfreq_list_lock);
		FUNC1(&devfreq->dev, "releasing devfreq which doesn't exist\n");
		return;
	}
	FUNC4(&devfreq->node);
	FUNC7(&devfreq_list_lock);

	if (devfreq->profile->exit)
		devfreq->profile->exit(devfreq->dev.parent);

	FUNC5(&devfreq->lock);
	FUNC3(devfreq);
}