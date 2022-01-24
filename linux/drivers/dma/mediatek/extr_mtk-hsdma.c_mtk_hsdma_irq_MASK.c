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
struct mtk_hsdma_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MTK_HSDMA_INT_ENABLE ; 
 int /*<<< orphan*/  MTK_HSDMA_INT_RXDONE ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_hsdma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_hsdma_device*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *devid)
{
	struct mtk_hsdma_device *hsdma = devid;

	/*
	 * Disable interrupt until all completed PDs are cleaned up in
	 * mtk_hsdma_free_rooms call.
	 */
	FUNC0(hsdma, MTK_HSDMA_INT_ENABLE, MTK_HSDMA_INT_RXDONE);

	FUNC1(hsdma);

	return IRQ_HANDLED;
}