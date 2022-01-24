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
typedef  int /*<<< orphan*/  u64 ;
struct mic_dma_chan {size_t head; int /*<<< orphan*/  prep_lock; int /*<<< orphan*/ * desc_ring; } ;
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct dma_async_tx_descriptor* FUNC0 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct mic_dma_chan*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mic_dma_chan*) ; 
 int FUNC4 (struct mic_dma_chan*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct mic_dma_chan* FUNC9 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC10(struct dma_chan *ch, dma_addr_t dst, u64 src_val,
			 unsigned long flags)
{
	struct mic_dma_chan *mic_ch = FUNC9(ch);
	int result;

	FUNC7(&mic_ch->prep_lock);
	result = FUNC2(mic_ch, 4);
	if (result < 0)
		goto error;
	FUNC6(&mic_ch->desc_ring[mic_ch->head], src_val, dst,
				 false);
	FUNC5(mic_ch);
	result = FUNC4(mic_ch, flags, 0, 0, 0);
	if (result < 0)
		goto error;

	return FUNC0(mic_ch);
error:
	FUNC1(FUNC3(mic_ch),
		"Error enqueueing dma status descriptor, error=%d\n", result);
	FUNC8(&mic_ch->prep_lock);
	return NULL;
}