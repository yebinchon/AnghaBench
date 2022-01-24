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
typedef  int u8 ;
struct intel_digital_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
#define  HDCP_2_2_AKE_SEND_HPRIME 130 
#define  HDCP_2_2_AKE_SEND_PAIRING_INFO 129 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  HDCP_2_2_REP_SEND_RECVID_LIST 128 
 int FUNC4 (struct intel_digital_port*,int*) ; 

__attribute__((used)) static
int FUNC5(struct intel_digital_port *intel_dig_port,
				  u8 msg_id, bool *msg_ready)
{
	u8 rx_status;
	int ret;

	*msg_ready = false;
	ret = FUNC4(intel_dig_port, &rx_status);
	if (ret < 0)
		return ret;

	switch (msg_id) {
	case HDCP_2_2_AKE_SEND_HPRIME:
		if (FUNC1(rx_status))
			*msg_ready = true;
		break;
	case HDCP_2_2_AKE_SEND_PAIRING_INFO:
		if (FUNC2(rx_status))
			*msg_ready = true;
		break;
	case HDCP_2_2_REP_SEND_RECVID_LIST:
		if (FUNC3(rx_status))
			*msg_ready = true;
		break;
	default:
		FUNC0("Unidentified msg_id: %d\n", msg_id);
		return -EINVAL;
	}

	return 0;
}