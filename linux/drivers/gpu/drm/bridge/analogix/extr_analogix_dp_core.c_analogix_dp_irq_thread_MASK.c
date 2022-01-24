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
struct analogix_dp_device {scalar_t__ drm_dev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
typedef  enum dp_irq_type { ____Placeholder_dp_irq_type } dp_irq_type ;

/* Variables and functions */
 int DP_IRQ_TYPE_HP_CABLE_IN ; 
 int DP_IRQ_TYPE_HP_CABLE_OUT ; 
 int DP_IRQ_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*) ; 
 int FUNC1 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct analogix_dp_device *dp = arg;
	enum dp_irq_type irq_type;

	irq_type = FUNC1(dp);
	if (irq_type & DP_IRQ_TYPE_HP_CABLE_IN ||
	    irq_type & DP_IRQ_TYPE_HP_CABLE_OUT) {
		FUNC3(dp->dev, "Detected cable status changed!\n");
		if (dp->drm_dev)
			FUNC4(dp->drm_dev);
	}

	if (irq_type != DP_IRQ_TYPE_UNKNOWN) {
		FUNC0(dp);
		FUNC2(dp);
	}

	return IRQ_HANDLED;
}