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
struct mic_dma_chan {int /*<<< orphan*/  cookie; int /*<<< orphan*/  ch_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* request_threaded_irq ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mic_dma_chan*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mic_dma_intr_handler ; 
 int /*<<< orphan*/  mic_dma_thread_fn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct mic_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mic_dma_chan*) ; 
 TYPE_1__* FUNC3 (struct mic_dma_chan*) ; 

__attribute__((used)) static int FUNC4(struct mic_dma_chan *ch)
{
	ch->cookie =
		FUNC3(ch)->request_threaded_irq(FUNC2(ch),
			mic_dma_intr_handler, mic_dma_thread_fn,
			"mic dma_channel", ch, ch->ch_num);
	return FUNC0(ch->cookie);
}