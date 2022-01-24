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
typedef  scalar_t__ u8 ;
struct dw_hdmi {scalar_t__ i2c; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_IH_MUTE_PHY_STAT0 ; 
 int /*<<< orphan*/  HDMI_IH_PHY_STAT0 ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*) ; 
 scalar_t__ FUNC1 (struct dw_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct dw_hdmi *hdmi = dev_id;
	u8 intr_stat;
	irqreturn_t ret = IRQ_NONE;

	if (hdmi->i2c)
		ret = FUNC0(hdmi);

	intr_stat = FUNC1(hdmi, HDMI_IH_PHY_STAT0);
	if (intr_stat) {
		FUNC2(hdmi, ~0, HDMI_IH_MUTE_PHY_STAT0);
		return IRQ_WAKE_THREAD;
	}

	return ret;
}