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
struct mic_dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct mic_dma_chan*) ; 

__attribute__((used)) static irqreturn_t FUNC1(int irq, void *data)
{
	struct mic_dma_chan *ch = ((struct mic_dma_chan *)data);

	FUNC0(ch);
	return IRQ_WAKE_THREAD;
}