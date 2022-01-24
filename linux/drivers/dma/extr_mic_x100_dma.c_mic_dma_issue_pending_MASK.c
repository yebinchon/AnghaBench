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
struct mic_dma_chan {scalar_t__ issued; scalar_t__ submitted; int /*<<< orphan*/  issue_lock; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIC_DMA_REG_DHPR ; 
 int /*<<< orphan*/  FUNC0 (struct mic_dma_chan*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mic_dma_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(struct dma_chan *ch)
{
	struct mic_dma_chan *mic_ch = FUNC3(ch);

	FUNC1(&mic_ch->issue_lock);
	/*
	 * Write to head triggers h/w to act on the descriptors.
	 * On MIC, writing the same head value twice causes
	 * a h/w error. On second write, h/w assumes we filled
	 * the entire ring & overwrote some of the descriptors.
	 */
	if (mic_ch->issued == mic_ch->submitted)
		goto out;
	mic_ch->issued = mic_ch->submitted;
	/*
	 * make descriptor updates visible before advancing head,
	 * this is purposefully not smp_wmb() since we are also
	 * publishing the descriptor updates to a dma device
	 */
	FUNC4();
	FUNC0(mic_ch, MIC_DMA_REG_DHPR, mic_ch->issued);
out:
	FUNC2(&mic_ch->issue_lock);
}