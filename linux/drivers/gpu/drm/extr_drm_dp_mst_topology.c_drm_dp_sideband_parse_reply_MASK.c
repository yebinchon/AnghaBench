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
struct drm_dp_sideband_msg_rx {int* msg; } ;
struct TYPE_3__ {int reason; int nak_data; int /*<<< orphan*/  guid; } ;
struct TYPE_4__ {TYPE_1__ nak; } ;
struct drm_dp_sideband_msg_reply_body {int reply_type; int req_type; TYPE_2__ u; } ;

/* Variables and functions */
#define  DP_ALLOCATE_PAYLOAD 136 
#define  DP_ENUM_PATH_RESOURCES 135 
#define  DP_LINK_ADDRESS 134 
#define  DP_POWER_DOWN_PHY 133 
#define  DP_POWER_UP_PHY 132 
#define  DP_QUERY_PAYLOAD 131 
#define  DP_REMOTE_DPCD_READ 130 
#define  DP_REMOTE_DPCD_WRITE 129 
#define  DP_REMOTE_I2C_READ 128 
 int DP_SIDEBAND_REPLY_NAK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC3 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC4 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC5 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC6 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC7 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC8 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int FUNC9 (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_dp_sideband_msg_reply_body*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC12(struct drm_dp_sideband_msg_rx *raw,
					struct drm_dp_sideband_msg_reply_body *msg)
{
	FUNC11(msg, 0, sizeof(*msg));
	msg->reply_type = (raw->msg[0] & 0x80) >> 7;
	msg->req_type = (raw->msg[0] & 0x7f);

	if (msg->reply_type == DP_SIDEBAND_REPLY_NAK) {
		FUNC10(msg->u.nak.guid, &raw->msg[1], 16);
		msg->u.nak.reason = raw->msg[17];
		msg->u.nak.nak_data = raw->msg[18];
		return false;
	}

	switch (msg->req_type) {
	case DP_LINK_ADDRESS:
		return FUNC4(raw, msg);
	case DP_QUERY_PAYLOAD:
		return FUNC6(raw, msg);
	case DP_REMOTE_DPCD_READ:
		return FUNC7(raw, msg);
	case DP_REMOTE_DPCD_WRITE:
		return FUNC8(raw, msg);
	case DP_REMOTE_I2C_READ:
		return FUNC9(raw, msg);
	case DP_ENUM_PATH_RESOURCES:
		return FUNC3(raw, msg);
	case DP_ALLOCATE_PAYLOAD:
		return FUNC2(raw, msg);
	case DP_POWER_DOWN_PHY:
	case DP_POWER_UP_PHY:
		return FUNC5(raw, msg);
	default:
		FUNC0("Got unknown reply 0x%02x (%s)\n", msg->req_type,
			  FUNC1(msg->req_type));
		return false;
	}
}