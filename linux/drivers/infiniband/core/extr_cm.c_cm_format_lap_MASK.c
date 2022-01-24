#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_15__ {int /*<<< orphan*/  dlid; int /*<<< orphan*/  slid; } ;
struct TYPE_13__ {void* interface_id; } ;
struct TYPE_14__ {TYPE_4__ global; } ;
struct TYPE_11__ {void* interface_id; } ;
struct TYPE_12__ {TYPE_2__ global; } ;
struct sa_path_rec {scalar_t__ rec_type; int /*<<< orphan*/  packet_life_time; int /*<<< orphan*/  sl; int /*<<< orphan*/  rate; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  flow_label; TYPE_6__ opa; TYPE_5__ dgid; TYPE_3__ sgid; } ;
struct cm_lap_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  alt_hop_limit; TYPE_5__ alt_remote_gid; TYPE_3__ alt_local_gid; void* alt_remote_lid; void* alt_local_lid; int /*<<< orphan*/  remote_comm_id; int /*<<< orphan*/  local_comm_id; int /*<<< orphan*/  hdr; } ;
struct TYPE_18__ {TYPE_8__* port; } ;
struct TYPE_10__ {int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct cm_id_private {TYPE_9__ av; int /*<<< orphan*/  remote_qpn; TYPE_1__ id; } ;
struct TYPE_17__ {TYPE_7__* cm_dev; } ;
struct TYPE_16__ {int /*<<< orphan*/  ack_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_LAP_ATTR_ID ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SA_PATH_REC_TYPE_OPA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_lap_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_lap_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cm_lap_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cm_lap_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cm_lap_msg*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cm_lap_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cm_lap_msg*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cm_lap_msg*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC18 (struct sa_path_rec*) ; 

__attribute__((used)) static void FUNC19(struct cm_lap_msg *lap_msg,
			  struct cm_id_private *cm_id_priv,
			  struct sa_path_rec *alternate_path,
			  const void *private_data,
			  u8 private_data_len)
{
	bool alt_ext = false;

	if (alternate_path->rec_type == SA_PATH_REC_TYPE_OPA)
		alt_ext = FUNC16(alternate_path->opa.dlid,
					      alternate_path->opa.slid);
	FUNC4(&lap_msg->hdr, CM_LAP_ATTR_ID,
			  FUNC3(cm_id_priv));
	lap_msg->local_comm_id = cm_id_priv->id.local_id;
	lap_msg->remote_comm_id = cm_id_priv->id.remote_id;
	FUNC8(lap_msg, cm_id_priv->remote_qpn);
	/* todo: need remote CM response timeout */
	FUNC9(lap_msg, 0x1F);
	lap_msg->alt_local_lid =
		FUNC13(FUNC15(FUNC18(alternate_path)));
	lap_msg->alt_remote_lid =
		FUNC13(FUNC15(FUNC17(alternate_path)));
	lap_msg->alt_local_gid = alternate_path->sgid;
	lap_msg->alt_remote_gid = alternate_path->dgid;
	if (alt_ext) {
		lap_msg->alt_local_gid.global.interface_id
			= FUNC0(FUNC1(alternate_path->opa.slid));
		lap_msg->alt_remote_gid.global.interface_id
			= FUNC0(FUNC1(alternate_path->opa.dlid));
	}
	FUNC5(lap_msg, alternate_path->flow_label);
	FUNC12(lap_msg, alternate_path->traffic_class);
	lap_msg->alt_hop_limit = alternate_path->hop_limit;
	FUNC7(lap_msg, alternate_path->rate);
	FUNC10(lap_msg, alternate_path->sl);
	FUNC11(lap_msg, 1); /* local only... */
	FUNC6(lap_msg,
		FUNC2(cm_id_priv->av.port->cm_dev->ack_delay,
			       alternate_path->packet_life_time));

	if (private_data && private_data_len)
		FUNC14(lap_msg->private_data, private_data, private_data_len);
}