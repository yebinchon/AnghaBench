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
struct ipu_soc {struct ipu_ic_priv* ic_priv; } ;
struct ipu_ic_priv {int /*<<< orphan*/  lock; struct ipu_ic* task; } ;
struct ipu_ic {int in_use; } ;
typedef  enum ipu_ic_task { ____Placeholder_ipu_ic_task } ipu_ic_task ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct ipu_ic* FUNC0 (int /*<<< orphan*/ ) ; 
 int IC_NUM_TASKS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ipu_ic *FUNC3(struct ipu_soc *ipu, enum ipu_ic_task task)
{
	struct ipu_ic_priv *priv = ipu->ic_priv;
	unsigned long flags;
	struct ipu_ic *ic, *ret;

	if (task >= IC_NUM_TASKS)
		return FUNC0(-EINVAL);

	ic = &priv->task[task];

	FUNC1(&priv->lock, flags);

	if (ic->in_use) {
		ret = FUNC0(-EBUSY);
		goto unlock;
	}

	ic->in_use = true;
	ret = ic;

unlock:
	FUNC2(&priv->lock, flags);
	return ret;
}