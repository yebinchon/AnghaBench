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
struct mic_dma_chan {int /*<<< orphan*/  prep_lock; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;

/* Variables and functions */
 struct dma_async_tx_descriptor* FUNC0 (struct mic_dma_chan*) ; 
 int FUNC1 (struct mic_dma_chan*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mic_dma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC5(struct dma_chan *ch, unsigned long flags)
{
	struct mic_dma_chan *mic_ch = FUNC4(ch);
	int ret;

	FUNC2(&mic_ch->prep_lock);
	ret = FUNC1(mic_ch, flags, 0, 0, 0);
	if (!ret)
		return FUNC0(mic_ch);
	FUNC3(&mic_ch->prep_lock);
	return NULL;
}