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
typedef  int /*<<< orphan*/  u8 ;
struct intel_digital_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDCP_2_2_HDMI_REG_RXSTATUS_OFFSET ; 
 int /*<<< orphan*/  HDCP_2_2_HDMI_RXSTATUS_LEN ; 
 int FUNC0 (struct intel_digital_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC1(struct intel_digital_port *intel_dig_port,
				    u8 *rx_status)
{
	return FUNC0(intel_dig_port,
				    HDCP_2_2_HDMI_REG_RXSTATUS_OFFSET,
				    rx_status,
				    HDCP_2_2_HDMI_RXSTATUS_LEN);
}