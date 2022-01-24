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
struct iw_cm_id {int /*<<< orphan*/  rem_ref; int /*<<< orphan*/  add_ref; int /*<<< orphan*/  event_handler; void* context; int /*<<< orphan*/  cm_handler; struct ib_device* device; } ;
struct iwcm_id_private {struct iw_cm_id id; int /*<<< orphan*/  work_free_list; int /*<<< orphan*/  work_list; int /*<<< orphan*/  destroy_comp; int /*<<< orphan*/  connect_wait; int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  iw_cm_handler ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct iw_cm_id* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IW_CM_STATE_IDLE ; 
 int /*<<< orphan*/  add_ref ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  cm_event_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct iwcm_id_private* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rem_ref ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct iw_cm_id *FUNC7(struct ib_device *device,
				 iw_cm_handler cm_handler,
				 void *context)
{
	struct iwcm_id_private *cm_id_priv;

	cm_id_priv = FUNC5(sizeof(*cm_id_priv), GFP_KERNEL);
	if (!cm_id_priv)
		return FUNC0(-ENOMEM);

	cm_id_priv->state = IW_CM_STATE_IDLE;
	cm_id_priv->id.device = device;
	cm_id_priv->id.cm_handler = cm_handler;
	cm_id_priv->id.context = context;
	cm_id_priv->id.event_handler = cm_event_handler;
	cm_id_priv->id.add_ref = add_ref;
	cm_id_priv->id.rem_ref = rem_ref;
	FUNC6(&cm_id_priv->lock);
	FUNC2(&cm_id_priv->refcount, 1);
	FUNC4(&cm_id_priv->connect_wait);
	FUNC3(&cm_id_priv->destroy_comp);
	FUNC1(&cm_id_priv->work_list);
	FUNC1(&cm_id_priv->work_free_list);

	return &cm_id_priv->id;
}