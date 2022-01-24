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
struct pca954x {int /*<<< orphan*/  irq; TYPE_1__* chip; int /*<<< orphan*/  client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int nchans; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PCA954X_IRQ_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct pca954x *data = dev_id;
	unsigned int child_irq;
	int ret, i, handled = 0;

	ret = FUNC2(data->client);
	if (ret < 0)
		return IRQ_NONE;

	for (i = 0; i < data->chip->nchans; i++) {
		if (ret & FUNC0(PCA954X_IRQ_OFFSET + i)) {
			child_irq = FUNC3(data->irq, i);
			FUNC1(child_irq);
			handled++;
		}
	}
	return handled ? IRQ_HANDLED : IRQ_NONE;
}