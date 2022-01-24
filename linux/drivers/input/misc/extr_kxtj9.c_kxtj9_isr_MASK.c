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
struct kxtj9_data {TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_REL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kxtj9_data*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev)
{
	struct kxtj9_data *tj9 = dev;
	int err;

	/* data ready is the only possible interrupt type */
	FUNC2(tj9);

	err = FUNC1(tj9->client, INT_REL);
	if (err < 0)
		FUNC0(&tj9->client->dev,
			"error clearing interrupt status: %d\n", err);

	return IRQ_HANDLED;
}