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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct intel_hdcp_shim {int (* read_2_2_msg ) (struct intel_digital_port*,int /*<<< orphan*/ ,struct hdcp2_rep_send_receiverid_list*,int) ;int (* write_2_2_msg ) (struct intel_digital_port*,struct hdcp2_rep_send_ack*,int) ;} ;
struct intel_hdcp {scalar_t__ seq_num_v; struct intel_hdcp_shim* shim; } ;
struct intel_digital_port {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_connector {TYPE_1__ base; struct intel_hdcp hdcp; } ;
struct hdcp2_rep_send_receiverid_list {int /*<<< orphan*/  receiver_ids; scalar_t__ seq_num_v; int /*<<< orphan*/ * rx_info; } ;
struct hdcp2_rep_send_ack {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 int EPERM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDCP_2_2_REP_SEND_RECVID_LIST ; 
 struct intel_digital_port* FUNC6 (struct intel_connector*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (struct drm_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct intel_connector*,struct hdcp2_rep_send_receiverid_list*,struct hdcp2_rep_send_ack*) ; 
 int FUNC10 (struct intel_digital_port*,int /*<<< orphan*/ ,struct hdcp2_rep_send_receiverid_list*,int) ; 
 int FUNC11 (struct intel_digital_port*,struct hdcp2_rep_send_ack*,int) ; 

__attribute__((used)) static
int FUNC12(struct intel_connector *connector)
{
	struct intel_digital_port *intel_dig_port = FUNC6(connector);
	struct intel_hdcp *hdcp = &connector->hdcp;
	struct drm_device *dev = connector->base.dev;
	union {
		struct hdcp2_rep_send_receiverid_list recvid_list;
		struct hdcp2_rep_send_ack rep_ack;
	} msgs;
	const struct intel_hdcp_shim *shim = hdcp->shim;
	u32 seq_num_v, device_cnt;
	u8 *rx_info;
	int ret;

	ret = shim->read_2_2_msg(intel_dig_port, HDCP_2_2_REP_SEND_RECVID_LIST,
				 &msgs.recvid_list, sizeof(msgs.recvid_list));
	if (ret < 0)
		return ret;

	rx_info = msgs.recvid_list.rx_info;

	if (FUNC4(rx_info[1]) ||
	    FUNC5(rx_info[1])) {
		FUNC0("Topology Max Size Exceeded\n");
		return -EINVAL;
	}

	/* Converting and Storing the seq_num_v to local variable as DWORD */
	seq_num_v =
		FUNC7((const u8 *)msgs.recvid_list.seq_num_v);

	if (seq_num_v < hdcp->seq_num_v) {
		/* Roll over of the seq_num_v from repeater. Reauthenticate. */
		FUNC0("Seq_num_v roll over.\n");
		return -EINVAL;
	}

	device_cnt = (FUNC2(rx_info[0]) << 4 |
		      FUNC3(rx_info[1]));
	if (FUNC8(dev, msgs.recvid_list.receiver_ids,
					device_cnt)) {
		FUNC1("Revoked receiver ID(s) is in list\n");
		return -EPERM;
	}

	ret = FUNC9(connector,
						    &msgs.recvid_list,
						    &msgs.rep_ack);
	if (ret < 0)
		return ret;

	hdcp->seq_num_v = seq_num_v;
	ret = shim->write_2_2_msg(intel_dig_port, &msgs.rep_ack,
				  sizeof(msgs.rep_ack));
	if (ret < 0)
		return ret;

	return 0;
}