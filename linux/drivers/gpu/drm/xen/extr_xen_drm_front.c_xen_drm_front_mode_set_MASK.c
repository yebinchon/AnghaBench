#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  void* u32 ;
struct TYPE_9__ {int /*<<< orphan*/  fb_cookie; void* bpp; void* height; void* width; void* y; void* x; } ;
struct TYPE_10__ {TYPE_3__ set_config; } ;
struct xendispl_req {TYPE_4__ op; } ;
struct xen_drm_front_info {int /*<<< orphan*/  io_lock; TYPE_2__* evt_pairs; } ;
struct TYPE_11__ {int /*<<< orphan*/  req_io_lock; } ;
struct TYPE_12__ {TYPE_5__ req; } ;
struct xen_drm_front_evtchnl {TYPE_6__ u; } ;
struct xen_drm_front_drm_pipeline {size_t index; TYPE_1__* drm_info; } ;
struct TYPE_8__ {struct xen_drm_front_evtchnl req; } ;
struct TYPE_7__ {struct xen_drm_front_info* front_info; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  XENDISPL_OP_SET_CONFIG ; 
 struct xendispl_req* FUNC0 (struct xen_drm_front_evtchnl*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct xen_drm_front_evtchnl*,struct xendispl_req*) ; 
 int FUNC2 (struct xen_drm_front_evtchnl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct xen_drm_front_drm_pipeline *pipeline,
			   u32 x, u32 y, u32 width, u32 height,
			   u32 bpp, u64 fb_cookie)
{
	struct xen_drm_front_evtchnl *evtchnl;
	struct xen_drm_front_info *front_info;
	struct xendispl_req *req;
	unsigned long flags;
	int ret;

	front_info = pipeline->drm_info->front_info;
	evtchnl = &front_info->evt_pairs[pipeline->index].req;
	if (FUNC7(!evtchnl))
		return -EIO;

	FUNC3(&evtchnl->u.req.req_io_lock);

	FUNC5(&front_info->io_lock, flags);
	req = FUNC0(evtchnl, XENDISPL_OP_SET_CONFIG);
	req->op.set_config.x = x;
	req->op.set_config.y = y;
	req->op.set_config.width = width;
	req->op.set_config.height = height;
	req->op.set_config.bpp = bpp;
	req->op.set_config.fb_cookie = fb_cookie;

	ret = FUNC1(evtchnl, req);
	FUNC6(&front_info->io_lock, flags);

	if (ret == 0)
		ret = FUNC2(evtchnl);

	FUNC4(&evtchnl->u.req.req_io_lock);
	return ret;
}