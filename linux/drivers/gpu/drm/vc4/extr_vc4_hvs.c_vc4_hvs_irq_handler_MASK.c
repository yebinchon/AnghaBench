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
typedef  int u32 ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int SCALER_CHANNELS_COUNT ; 
 int /*<<< orphan*/  SCALER_DISPCTRL ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  SCALER_DISPSTAT ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 struct vc4_dev* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct drm_device *dev = data;
	struct vc4_dev *vc4 = FUNC5(dev);
	irqreturn_t irqret = IRQ_NONE;
	int channel;
	u32 control;
	u32 status;

	status = FUNC0(SCALER_DISPSTAT);
	control = FUNC0(SCALER_DISPCTRL);

	for (channel = 0; channel < SCALER_CHANNELS_COUNT; channel++) {
		/* Interrupt masking is not always honored, so check it here. */
		if (status & FUNC3(channel) &&
		    control & FUNC2(channel)) {
			FUNC6(dev, channel);
			FUNC7(dev);

			irqret = IRQ_HANDLED;
		}
	}

	/* Clear every per-channel interrupt flag. */
	FUNC1(SCALER_DISPSTAT, FUNC4(0) |
				   FUNC4(1) |
				   FUNC4(2));

	return irqret;
}