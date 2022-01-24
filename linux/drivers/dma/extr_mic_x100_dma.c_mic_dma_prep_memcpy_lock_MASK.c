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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 struct dma_async_tx_descriptor* FUNC0 (struct mic_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct device* FUNC2 (struct mic_dma_chan*) ; 
 int FUNC3 (struct mic_dma_chan*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mic_dma_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static struct dma_async_tx_descriptor *
FUNC7(struct dma_chan *ch, dma_addr_t dma_dest,
			 dma_addr_t dma_src, size_t len, unsigned long flags)
{
	struct mic_dma_chan *mic_ch = FUNC6(ch);
	struct device *dev = FUNC2(mic_ch);
	int result;

	if (!len && !flags)
		return NULL;

	FUNC4(&mic_ch->prep_lock);
	result = FUNC3(mic_ch, flags, dma_src, dma_dest, len);
	if (result >= 0)
		return FUNC0(mic_ch);
	FUNC1(dev, "Error enqueueing dma, error=%d\n", result);
	FUNC5(&mic_ch->prep_lock);
	return NULL;
}