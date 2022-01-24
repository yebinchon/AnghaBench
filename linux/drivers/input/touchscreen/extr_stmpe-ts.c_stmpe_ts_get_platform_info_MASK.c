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
typedef  void* u32 ;
struct stmpe_touch {void* i_drive; void* fraction_z; void* settling; void* touch_det_delay; void* ave_ctrl; TYPE_2__* stmpe; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {void* adc_freq; void* ref_sel; void* mod_12b; void* sample_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,void**) ; 

__attribute__((used)) static void FUNC1(struct platform_device *pdev,
					struct stmpe_touch *ts)
{
	struct device_node *np = pdev->dev.of_node;
	u32 val;

	if (np) {
		if (!FUNC0(np, "st,sample-time", &val))
			ts->stmpe->sample_time = val;
		if (!FUNC0(np, "st,mod-12b", &val))
			ts->stmpe->mod_12b = val;
		if (!FUNC0(np, "st,ref-sel", &val))
			ts->stmpe->ref_sel = val;
		if (!FUNC0(np, "st,adc-freq", &val))
			ts->stmpe->adc_freq = val;
		if (!FUNC0(np, "st,ave-ctrl", &val))
			ts->ave_ctrl = val;
		if (!FUNC0(np, "st,touch-det-delay", &val))
			ts->touch_det_delay = val;
		if (!FUNC0(np, "st,settling", &val))
			ts->settling = val;
		if (!FUNC0(np, "st,fraction-z", &val))
			ts->fraction_z = val;
		if (!FUNC0(np, "st,i-drive", &val))
			ts->i_drive = val;
	}
}