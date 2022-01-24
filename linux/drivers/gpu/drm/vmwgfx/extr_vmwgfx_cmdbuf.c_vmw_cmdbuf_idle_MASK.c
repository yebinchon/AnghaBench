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
struct vmw_cmdbuf_man {TYPE_1__* dev_priv; int /*<<< orphan*/  idle_queue; } ;
struct TYPE_3__ {int /*<<< orphan*/  cmdbuf_waiters; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  SVGA_IRQFLAG_COMMAND_BUFFER ; 
 int FUNC0 (struct vmw_cmdbuf_man*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_cmdbuf_man*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC6(struct vmw_cmdbuf_man *man, bool interruptible,
		    unsigned long timeout)
{
	int ret;

	ret = FUNC0(man, interruptible);
	FUNC2(man->dev_priv,
			       SVGA_IRQFLAG_COMMAND_BUFFER,
			       &man->dev_priv->cmdbuf_waiters);

	if (interruptible) {
		ret = FUNC4
			(man->idle_queue, FUNC1(man, true),
			 timeout);
	} else {
		ret = FUNC5
			(man->idle_queue, FUNC1(man, true),
			 timeout);
	}
	FUNC3(man->dev_priv,
				  SVGA_IRQFLAG_COMMAND_BUFFER,
				  &man->dev_priv->cmdbuf_waiters);
	if (ret == 0) {
		if (!FUNC1(man, true))
			ret = -EBUSY;
		else
			ret = 0;
	}
	if (ret > 0)
		ret = 0;

	return ret;
}