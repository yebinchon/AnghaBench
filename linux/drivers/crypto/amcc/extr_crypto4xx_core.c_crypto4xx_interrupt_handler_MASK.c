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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct crypto4xx_core_device {int /*<<< orphan*/  tasklet; TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ ce_base; } ;

/* Variables and functions */
 scalar_t__ CRYPTO4XX_INT_CLR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct crypto4xx_core_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline irqreturn_t FUNC3(int irq, void *data,
						      u32 clr_val)
{
	struct device *dev = (struct device *)data;
	struct crypto4xx_core_device *core_dev = FUNC0(dev);

	FUNC2(clr_val, core_dev->dev->ce_base + CRYPTO4XX_INT_CLR);
	FUNC1(&core_dev->tasklet);

	return IRQ_HANDLED;
}