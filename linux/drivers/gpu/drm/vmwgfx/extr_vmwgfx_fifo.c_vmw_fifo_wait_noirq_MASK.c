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
typedef  int /*<<< orphan*/  uint32_t ;
struct vmw_private {int /*<<< orphan*/  fifo_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __wait ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct vmw_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct vmw_private *dev_priv,
			       uint32_t bytes, bool interruptible,
			       unsigned long timeout)
{
	int ret = 0;
	unsigned long end_jiffies = jiffies + timeout;
	FUNC0(__wait);

	FUNC2("Fifo wait noirq.\n");

	for (;;) {
		FUNC4(&dev_priv->fifo_queue, &__wait,
				(interruptible) ?
				TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
		if (!FUNC8(dev_priv, bytes))
			break;
		if (FUNC7(jiffies, end_jiffies)) {
			ret = -EBUSY;
			FUNC1("SVGA device lockup.\n");
			break;
		}
		FUNC5(1);
		if (interruptible && FUNC6(current)) {
			ret = -ERESTARTSYS;
			break;
		}
	}
	FUNC3(&dev_priv->fifo_queue, &__wait);
	FUNC9(&dev_priv->fifo_queue);
	FUNC2("Fifo noirq exit.\n");
	return ret;
}