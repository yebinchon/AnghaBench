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
struct mic_dma_chan {int /*<<< orphan*/  cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_irq ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mic_dma_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_dma_chan*) ; 
 TYPE_1__* FUNC2 (struct mic_dma_chan*) ; 

__attribute__((used)) static inline void FUNC3(struct mic_dma_chan *ch)
{
	FUNC2(ch)->free_irq(FUNC1(ch), ch->cookie, ch);
}