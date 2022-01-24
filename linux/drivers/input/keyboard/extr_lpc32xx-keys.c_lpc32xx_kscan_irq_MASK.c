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
struct lpc32xx_kscan_drv {int matrix_sz; int /*<<< orphan*/  input; int /*<<< orphan*/  kscan_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc32xx_kscan_drv*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct lpc32xx_kscan_drv *kscandat = dev_id;
	int i;

	for (i = 0; i < kscandat->matrix_sz; i++)
		FUNC2(kscandat, i);

	FUNC3(1, FUNC0(kscandat->kscan_base));

	FUNC1(kscandat->input);

	return IRQ_HANDLED;
}