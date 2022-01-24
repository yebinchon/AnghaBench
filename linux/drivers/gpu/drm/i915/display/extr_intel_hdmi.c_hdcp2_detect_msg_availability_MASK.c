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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int HDCP_2_2_HDMI_RXSTATUS_LEN ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int HDCP_2_2_REP_SEND_RECVID_LIST ; 
 int FUNC3 (struct intel_digital_port*,int*) ; 

__attribute__((used)) static inline
int FUNC4(struct intel_digital_port *intel_digital_port,
				  u8 msg_id, bool *msg_ready,
				  ssize_t *msg_sz)
{
	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
	int ret;

	ret = FUNC3(intel_digital_port, rx_status);
	if (ret < 0) {
		FUNC0("rx_status read failed. Err %d\n", ret);
		return ret;
	}

	*msg_sz = ((FUNC1(rx_status[1]) << 8) |
		  rx_status[0]);

	if (msg_id == HDCP_2_2_REP_SEND_RECVID_LIST)
		*msg_ready = (FUNC2(rx_status[1]) &&
			     *msg_sz);
	else
		*msg_ready = *msg_sz;

	return 0;
}