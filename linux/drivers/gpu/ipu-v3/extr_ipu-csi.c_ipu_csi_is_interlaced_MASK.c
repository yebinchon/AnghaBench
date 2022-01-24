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
typedef  int u32 ;
struct ipu_csi {int /*<<< orphan*/  id; TYPE_1__* ipu; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_SENS_CONF ; 
 int CSI_SENS_CONF_SENS_PRTCL_MASK ; 
 int CSI_SENS_CONF_SENS_PRTCL_SHIFT ; 
#define  IPU_CSI_CLK_MODE_CCIR1120_INTERLACED_DDR 135 
#define  IPU_CSI_CLK_MODE_CCIR1120_INTERLACED_SDR 134 
#define  IPU_CSI_CLK_MODE_CCIR1120_PROGRESSIVE_DDR 133 
#define  IPU_CSI_CLK_MODE_CCIR1120_PROGRESSIVE_SDR 132 
#define  IPU_CSI_CLK_MODE_CCIR656_INTERLACED 131 
#define  IPU_CSI_CLK_MODE_CCIR656_PROGRESSIVE 130 
#define  IPU_CSI_CLK_MODE_GATED_CLK 129 
#define  IPU_CSI_CLK_MODE_NONGATED_CLK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

bool FUNC4(struct ipu_csi *csi)
{
	unsigned long flags;
	u32 sensor_protocol;

	FUNC2(&csi->lock, flags);
	sensor_protocol =
		(FUNC1(csi, CSI_SENS_CONF) &
		 CSI_SENS_CONF_SENS_PRTCL_MASK) >>
		CSI_SENS_CONF_SENS_PRTCL_SHIFT;
	FUNC3(&csi->lock, flags);

	switch (sensor_protocol) {
	case IPU_CSI_CLK_MODE_GATED_CLK:
	case IPU_CSI_CLK_MODE_NONGATED_CLK:
	case IPU_CSI_CLK_MODE_CCIR656_PROGRESSIVE:
	case IPU_CSI_CLK_MODE_CCIR1120_PROGRESSIVE_DDR:
	case IPU_CSI_CLK_MODE_CCIR1120_PROGRESSIVE_SDR:
		return false;
	case IPU_CSI_CLK_MODE_CCIR656_INTERLACED:
	case IPU_CSI_CLK_MODE_CCIR1120_INTERLACED_DDR:
	case IPU_CSI_CLK_MODE_CCIR1120_INTERLACED_SDR:
		return true;
	default:
		FUNC0(csi->ipu->dev,
			"CSI %d sensor protocol unsupported\n", csi->id);
		return false;
	}
}