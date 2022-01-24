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
struct da9052_tsi {int /*<<< orphan*/  ts_pen_work; int /*<<< orphan*/  da9052; int /*<<< orphan*/  stopped; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_IRQ_PENDOWN ; 
 int /*<<< orphan*/  DA9052_IRQ_TSIREADY ; 
 int HZ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct da9052_tsi*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct da9052_tsi *tsi = data;

	if (!tsi->stopped) {
		/* Mask PEN_DOWN event and unmask TSI_READY event */
		FUNC0(tsi->da9052, DA9052_IRQ_PENDOWN);
		FUNC1(tsi->da9052, DA9052_IRQ_TSIREADY);

		FUNC2(tsi, true);

		FUNC3(&tsi->ts_pen_work, HZ / 50);
	}

	return IRQ_HANDLED;
}