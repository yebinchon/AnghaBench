#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct mISDNtimerdev {int work; scalar_t__ next_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; int /*<<< orphan*/  wait; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct mISDNtimer {int id; TYPE_1__ tl; int /*<<< orphan*/  list; struct mISDNtimerdev* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dev_expire_timer ; 
 scalar_t__ jiffies ; 
 struct mISDNtimer* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct mISDNtimerdev *dev, int timeout)
{
	int			id;
	struct mISDNtimer	*timer;

	if (!timeout) {
		dev->work = 1;
		FUNC6(&dev->wait);
		id = 0;
	} else {
		timer = FUNC1(sizeof(struct mISDNtimer), GFP_KERNEL);
		if (!timer)
			return -ENOMEM;
		timer->dev = dev;
		FUNC5(&timer->tl, dev_expire_timer, 0);
		FUNC3(&dev->lock);
		id = timer->id = dev->next_id++;
		if (dev->next_id < 0)
			dev->next_id = 1;
		FUNC2(&timer->list, &dev->pending);
		timer->tl.expires = jiffies + ((HZ * (u_long)timeout) / 1000);
		FUNC0(&timer->tl);
		FUNC4(&dev->lock);
	}
	return id;
}