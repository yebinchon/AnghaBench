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
struct TYPE_2__ {scalar_t__ dev; } ;
struct sii902x {TYPE_1__ bridge; int /*<<< orphan*/  mutex; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int SII902X_HOTPLUG_EVENT ; 
 int /*<<< orphan*/  SII902X_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct sii902x *sii902x = data;
	unsigned int status = 0;

	FUNC1(&sii902x->mutex);

	FUNC3(sii902x->regmap, SII902X_INT_STATUS, &status);
	FUNC4(sii902x->regmap, SII902X_INT_STATUS, status);

	FUNC2(&sii902x->mutex);

	if ((status & SII902X_HOTPLUG_EVENT) && sii902x->bridge.dev)
		FUNC0(sii902x->bridge.dev);

	return IRQ_HANDLED;
}