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
struct iwcm_id_private {int state; int /*<<< orphan*/  lock; } ;
struct ib_qp_attr {int qp_access_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 int IB_QP_ACCESS_FLAGS ; 
 int IB_QP_STATE ; 
#define  IW_CM_STATE_CONN_RECV 131 
#define  IW_CM_STATE_CONN_SENT 130 
#define  IW_CM_STATE_ESTABLISHED 129 
#define  IW_CM_STATE_IDLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct iwcm_id_private *cm_id_priv,
				  struct ib_qp_attr *qp_attr,
				  int *qp_attr_mask)
{
	unsigned long flags;
	int ret;

	FUNC0(&cm_id_priv->lock, flags);
	switch (cm_id_priv->state) {
	case IW_CM_STATE_IDLE:
	case IW_CM_STATE_CONN_SENT:
	case IW_CM_STATE_CONN_RECV:
	case IW_CM_STATE_ESTABLISHED:
		*qp_attr_mask = IB_QP_STATE | IB_QP_ACCESS_FLAGS;
		qp_attr->qp_access_flags = IB_ACCESS_REMOTE_WRITE|
					   IB_ACCESS_REMOTE_READ;
		ret = 0;
		break;
	default:
		ret = -EINVAL;
		break;
	}
	FUNC1(&cm_id_priv->lock, flags);
	return ret;
}