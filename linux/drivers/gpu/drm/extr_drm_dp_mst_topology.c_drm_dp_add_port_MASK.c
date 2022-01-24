#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; int is_remote; int /*<<< orphan*/  ddc; int /*<<< orphan*/  dev; } ;
struct drm_dp_mst_port {scalar_t__ port_num; int pdt; int ddps; int /*<<< orphan*/  connector; TYPE_1__ aux; int /*<<< orphan*/  cached_edid; int /*<<< orphan*/  next; int /*<<< orphan*/  input; int /*<<< orphan*/  mstb; scalar_t__ available_pbn; int /*<<< orphan*/  num_sdp_stream_sinks; int /*<<< orphan*/  num_sdp_streams; int /*<<< orphan*/  dpcd_rev; int /*<<< orphan*/  ldps; int /*<<< orphan*/  mcs; TYPE_3__* mgr; struct drm_dp_mst_branch* parent; int /*<<< orphan*/  malloc_kref; int /*<<< orphan*/  topology_kref; } ;
struct drm_dp_mst_branch {TYPE_3__* mgr; int /*<<< orphan*/  ports; } ;
struct drm_dp_link_addr_reply_port {scalar_t__ port_number; int peer_device_type; int ddps; int /*<<< orphan*/  num_sdp_stream_sinks; int /*<<< orphan*/  num_sdp_streams; int /*<<< orphan*/  dpcd_revision; int /*<<< orphan*/  legacy_device_plug_status; int /*<<< orphan*/  mcs; int /*<<< orphan*/  input_port; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  proppath ;
struct TYPE_8__ {TYPE_2__* cbs; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* register_connector ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* add_connector ) (TYPE_3__*,struct drm_dp_mst_port*,char*) ;} ;

/* Variables and functions */
 scalar_t__ DP_MST_LOGICAL_PORT_0 ; 
 int DP_PEER_DEVICE_DP_LEGACY_CONV ; 
 int DP_PEER_DEVICE_SST_SINK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_dp_mst_branch*,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_dp_mst_port* FUNC2 (struct drm_dp_mst_branch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_mst_branch*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_dp_mst_port*) ; 
 int FUNC6 (struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_dp_mst_port*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct drm_dp_mst_branch*,struct drm_dp_mst_port*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct drm_dp_mst_port* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,struct drm_dp_mst_port*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct drm_dp_mst_branch *mstb,
			    struct drm_device *dev,
			    struct drm_dp_link_addr_reply_port *port_msg)
{
	struct drm_dp_mst_port *port;
	bool ret;
	bool created = false;
	int old_pdt = 0;
	int old_ddps = 0;

	port = FUNC2(mstb, port_msg->port_number);
	if (!port) {
		port = FUNC12(sizeof(*port), GFP_KERNEL);
		if (!port)
			return;
		FUNC11(&port->topology_kref);
		FUNC11(&port->malloc_kref);
		port->parent = mstb;
		port->port_num = port_msg->port_number;
		port->mgr = mstb->mgr;
		port->aux.name = "DPMST";
		port->aux.dev = dev->dev;
		port->aux.is_remote = true;

		/*
		 * Make sure the memory allocation for our parent branch stays
		 * around until our own memory allocation is released
		 */
		FUNC3(mstb);

		created = true;
	} else {
		old_pdt = port->pdt;
		old_ddps = port->ddps;
	}

	port->pdt = port_msg->peer_device_type;
	port->input = port_msg->input_port;
	port->mcs = port_msg->mcs;
	port->ddps = port_msg->ddps;
	port->ldps = port_msg->legacy_device_plug_status;
	port->dpcd_rev = port_msg->dpcd_revision;
	port->num_sdp_streams = port_msg->num_sdp_streams;
	port->num_sdp_stream_sinks = port_msg->num_sdp_stream_sinks;

	/* manage mstb port lists with mgr lock - take a reference
	   for this list */
	if (created) {
		FUNC15(&mstb->mgr->lock);
		FUNC4(port);
		FUNC13(&port->next, &mstb->ports);
		FUNC16(&mstb->mgr->lock);
	}

	if (old_ddps != port->ddps) {
		if (port->ddps) {
			if (!port->input) {
				FUNC8(mstb->mgr,
								mstb, port);
			}
		} else {
			port->available_pbn = 0;
		}
	}

	if (old_pdt != port->pdt && !port->input) {
		FUNC7(port, old_pdt);

		ret = FUNC6(port);
		if (ret == true)
			FUNC9(mstb->mgr, port->mstb);
	}

	if (created && !port->input) {
		char proppath[255];

		FUNC0(mstb, port->port_num, proppath,
				    sizeof(proppath));
		port->connector = (*mstb->mgr->cbs->add_connector)(mstb->mgr,
								   port,
								   proppath);
		if (!port->connector) {
			/* remove it from the port list */
			FUNC15(&mstb->mgr->lock);
			FUNC14(&port->next);
			FUNC16(&mstb->mgr->lock);
			/* drop port list reference */
			FUNC5(port);
			goto out;
		}
		if ((port->pdt == DP_PEER_DEVICE_DP_LEGACY_CONV ||
		     port->pdt == DP_PEER_DEVICE_SST_SINK) &&
		    port->port_num >= DP_MST_LOGICAL_PORT_0) {
			port->cached_edid = FUNC10(port->connector,
							 &port->aux.ddc);
			FUNC1(port->connector);
		}
		(*mstb->mgr->cbs->register_connector)(port->connector);
	}

out:
	/* put reference to this port */
	FUNC5(port);
}