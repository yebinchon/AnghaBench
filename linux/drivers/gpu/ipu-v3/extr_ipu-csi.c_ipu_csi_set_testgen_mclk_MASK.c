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
struct ipu_csi {TYPE_1__* ipu; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSI_SENS_CONF ; 
 int CSI_SENS_CONF_DIVRATIO_MASK ; 
 int CSI_SENS_CONF_DIVRATIO_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ipu_csi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_csi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ipu_csi *csi, u32 pixel_clk,
					u32 ipu_clk)
{
	u32 temp;
	int div_ratio;

	div_ratio = (ipu_clk / pixel_clk) - 1;

	if (div_ratio > 0xFF || div_ratio < 0) {
		FUNC0(csi->ipu->dev,
			"value of pixel_clk extends normal range\n");
		return -EINVAL;
	}

	temp = FUNC1(csi, CSI_SENS_CONF);
	temp &= ~CSI_SENS_CONF_DIVRATIO_MASK;
	FUNC2(csi, temp | (div_ratio << CSI_SENS_CONF_DIVRATIO_SHIFT),
			  CSI_SENS_CONF);

	return 0;
}