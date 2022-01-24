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
struct ad7877 {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; TYPE_1__* spi; int /*<<< orphan*/  msg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ TS_PEN_UP_TIMEOUT ; 
 int FUNC0 (struct ad7877*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *handle)
{
	struct ad7877 *ts = handle;
	unsigned long flags;
	int error;

	error = FUNC3(ts->spi, &ts->msg);
	if (error) {
		FUNC1(&ts->spi->dev, "spi_sync --> %d\n", error);
		goto out;
	}

	FUNC4(&ts->lock, flags);
	error = FUNC0(ts);
	if (!error)
		FUNC2(&ts->timer, jiffies + TS_PEN_UP_TIMEOUT);
	FUNC5(&ts->lock, flags);

out:
	return IRQ_HANDLED;
}