#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cm_work {int /*<<< orphan*/  list; int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct TYPE_6__ {TYPE_2__* port; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct cm_id_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; int /*<<< orphan*/  msg; TYPE_3__ av; TYPE_1__ id; } ;
struct TYPE_5__ {int /*<<< orphan*/  mad_agent; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_CM_ESTABLISHED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct cm_id_private* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cm_work *work)
{
	struct cm_id_private *cm_id_priv;
	int ret;

	/* See comment in cm_establish about lookup. */
	cm_id_priv = FUNC1(work->local_id, work->remote_id);
	if (!cm_id_priv)
		return -EINVAL;

	FUNC6(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_ESTABLISHED) {
		FUNC7(&cm_id_priv->lock);
		goto out;
	}

	FUNC4(cm_id_priv->av.port->mad_agent, cm_id_priv->msg);
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC5(&work->list, &cm_id_priv->work_list);
	FUNC7(&cm_id_priv->lock);

	if (ret)
		FUNC3(cm_id_priv, work);
	else
		FUNC2(cm_id_priv);
	return 0;
out:
	FUNC2(cm_id_priv);
	return -EINVAL;
}