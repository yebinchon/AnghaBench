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
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct cm_id_private {int /*<<< orphan*/ * timewait_info; TYPE_1__ id; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CM_IDLE ; 
 TYPE_2__ cm ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct cm_id_private *cm_id_priv)
{
	unsigned long flags;

	cm_id_priv->id.state = IB_CM_IDLE;
	if (cm_id_priv->timewait_info) {
		FUNC2(&cm.lock, flags);
		FUNC0(cm_id_priv->timewait_info);
		FUNC3(&cm.lock, flags);
		FUNC1(cm_id_priv->timewait_info);
		cm_id_priv->timewait_info = NULL;
	}
}