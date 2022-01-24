#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xendispl_resp {scalar_t__ id; int operation; int /*<<< orphan*/  status; } ;
struct xen_drm_front_info {int /*<<< orphan*/  io_lock; } ;
struct TYPE_9__ {scalar_t__ rsp_cons; scalar_t__ req_prod_pvt; TYPE_1__* sring; } ;
struct TYPE_7__ {TYPE_4__ ring; int /*<<< orphan*/  completion; int /*<<< orphan*/  resp_status; } ;
struct TYPE_8__ {TYPE_2__ req; } ;
struct xen_drm_front_evtchnl {scalar_t__ state; scalar_t__ evt_id; TYPE_3__ u; struct xen_drm_front_info* front_info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {scalar_t__ rsp_prod; scalar_t__ rsp_event; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ EVTCHNL_STATE_CONNECTED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 struct xendispl_resp* FUNC2 (TYPE_4__*,scalar_t__) ; 
#define  XENDISPL_OP_DBUF_CREATE 133 
#define  XENDISPL_OP_DBUF_DESTROY 132 
#define  XENDISPL_OP_FB_ATTACH 131 
#define  XENDISPL_OP_FB_DETACH 130 
#define  XENDISPL_OP_PG_FLIP 129 
#define  XENDISPL_OP_SET_CONFIG 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct xen_drm_front_evtchnl *evtchnl = dev_id;
	struct xen_drm_front_info *front_info = evtchnl->front_info;
	struct xendispl_resp *resp;
	RING_IDX i, rp;
	unsigned long flags;

	if (FUNC6(evtchnl->state != EVTCHNL_STATE_CONNECTED))
		return IRQ_HANDLED;

	FUNC4(&front_info->io_lock, flags);

again:
	rp = evtchnl->u.req.ring.sring->rsp_prod;
	/* ensure we see queued responses up to rp */
	FUNC7();

	for (i = evtchnl->u.req.ring.rsp_cons; i != rp; i++) {
		resp = FUNC2(&evtchnl->u.req.ring, i);
		if (FUNC6(resp->id != evtchnl->evt_id))
			continue;

		switch (resp->operation) {
		case XENDISPL_OP_PG_FLIP:
		case XENDISPL_OP_FB_ATTACH:
		case XENDISPL_OP_FB_DETACH:
		case XENDISPL_OP_DBUF_CREATE:
		case XENDISPL_OP_DBUF_DESTROY:
		case XENDISPL_OP_SET_CONFIG:
			evtchnl->u.req.resp_status = resp->status;
			FUNC3(&evtchnl->u.req.completion);
			break;

		default:
			FUNC0("Operation %d is not supported\n",
				  resp->operation);
			break;
		}
	}

	evtchnl->u.req.ring.rsp_cons = i;

	if (i != evtchnl->u.req.ring.req_prod_pvt) {
		int more_to_do;

		FUNC1(&evtchnl->u.req.ring,
					       more_to_do);
		if (more_to_do)
			goto again;
	} else {
		evtchnl->u.req.ring.sring->rsp_event = i + 1;
	}

	FUNC5(&front_info->io_lock, flags);
	return IRQ_HANDLED;
}