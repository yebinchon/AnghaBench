#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_7__ {int /*<<< orphan*/  fb_cookie; } ;
struct TYPE_8__ {TYPE_2__ fb_detach; } ;
struct xendispl_req {TYPE_3__ op; } ;
struct xen_drm_front_info {int /*<<< orphan*/  io_lock; TYPE_1__* evt_pairs; } ;
struct TYPE_9__ {int /*<<< orphan*/  req_io_lock; } ;
struct TYPE_10__ {TYPE_4__ req; } ;
struct xen_drm_front_evtchnl {TYPE_5__ u; } ;
struct TYPE_6__ {struct xen_drm_front_evtchnl req; } ;

/* Variables and functions */
 int EIO ; 
 size_t GENERIC_OP_EVT_CHNL ; 
 int /*<<< orphan*/  XENDISPL_OP_FB_DETACH ; 
 struct xendispl_req* FUNC0 (struct xen_drm_front_evtchnl*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xen_drm_front_evtchnl*,struct xendispl_req*) ; 
 int FUNC2 (struct xen_drm_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct xen_drm_front_info *front_info,
			    u64 fb_cookie)
{
	struct xen_drm_front_evtchnl *evtchnl;
	struct xendispl_req *req;
	unsigned long flags;
	int ret;

	evtchnl = &front_info->evt_pairs[GENERIC_OP_EVT_CHNL].req;
	if (FUNC7(!evtchnl))
		return -EIO;

	FUNC3(&evtchnl->u.req.req_io_lock);

	FUNC5(&front_info->io_lock, flags);
	req = FUNC0(evtchnl, XENDISPL_OP_FB_DETACH);
	req->op.fb_detach.fb_cookie = fb_cookie;

	ret = FUNC1(evtchnl, req);
	FUNC6(&front_info->io_lock, flags);

	if (ret == 0)
		ret = FUNC2(evtchnl);

	FUNC4(&evtchnl->u.req.req_io_lock);
	return ret;
}