#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xen_drm_front_cfg {int num_connectors; } ;
struct xen_drm_front_info {int num_evt_pairs; TYPE_1__* evt_pairs; struct xen_drm_front_cfg cfg; } ;
struct xen_drm_front_evtchnl_pair {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  evt; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EVTCHNL_TYPE_EVT ; 
 int /*<<< orphan*/  EVTCHNL_TYPE_REQ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct xen_drm_front_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_drm_front_info*) ; 

int FUNC4(struct xen_drm_front_info *front_info)
{
	struct xen_drm_front_cfg *cfg;
	int ret, conn;

	cfg = &front_info->cfg;

	front_info->evt_pairs =
			FUNC2(cfg->num_connectors,
				sizeof(struct xen_drm_front_evtchnl_pair),
				GFP_KERNEL);
	if (!front_info->evt_pairs) {
		ret = -ENOMEM;
		goto fail;
	}

	for (conn = 0; conn < cfg->num_connectors; conn++) {
		ret = FUNC1(front_info, conn,
				    &front_info->evt_pairs[conn].req,
				    EVTCHNL_TYPE_REQ);
		if (ret < 0) {
			FUNC0("Error allocating control channel\n");
			goto fail;
		}

		ret = FUNC1(front_info, conn,
				    &front_info->evt_pairs[conn].evt,
				    EVTCHNL_TYPE_EVT);
		if (ret < 0) {
			FUNC0("Error allocating in-event channel\n");
			goto fail;
		}
	}
	front_info->num_evt_pairs = cfg->num_connectors;
	return 0;

fail:
	FUNC3(front_info);
	return ret;
}