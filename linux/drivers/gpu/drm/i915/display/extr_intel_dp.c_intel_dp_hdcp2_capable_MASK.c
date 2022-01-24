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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {int /*<<< orphan*/  aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_HDCP_2_2_REG_RX_CAPS_OFFSET ; 
 int EIO ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int HDCP_2_2_RXCAPS_LEN ; 
 scalar_t__ HDCP_2_2_RX_CAPS_VERSION_VAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static
int FUNC2(struct intel_digital_port *intel_dig_port,
			   bool *capable)
{
	u8 rx_caps[3];
	int ret;

	*capable = false;
	ret = FUNC1(&intel_dig_port->dp.aux,
			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
			       rx_caps, HDCP_2_2_RXCAPS_LEN);
	if (ret != HDCP_2_2_RXCAPS_LEN)
		return ret >= 0 ? -EIO : ret;

	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
	    FUNC0(rx_caps[2]))
		*capable = true;

	return 0;
}