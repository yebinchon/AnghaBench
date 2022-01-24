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
 int /*<<< orphan*/  DRM_HDCP_DDC_BCAPS ; 
 int DRM_HDCP_DDC_BCAPS_KSV_FIFO_READY ; 
 int FUNC1 (struct intel_digital_port*,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static
int FUNC2(struct intel_digital_port *intel_dig_port,
				   bool *ksv_ready)
{
	int ret;
	u8 val;

	ret = FUNC1(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
	if (ret) {
		FUNC0("Read bcaps over DDC failed (%d)\n", ret);
		return ret;
	}
	*ksv_ready = val & DRM_HDCP_DDC_BCAPS_KSV_FIFO_READY;
	return 0;
}