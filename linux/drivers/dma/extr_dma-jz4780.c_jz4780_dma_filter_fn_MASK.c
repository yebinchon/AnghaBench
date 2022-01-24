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
struct jz4780_dma_filter_data {int channel; int /*<<< orphan*/  transfer_type; } ;
struct jz4780_dma_dev {int chan_reserved; } ;
struct jz4780_dma_chan {int id; int /*<<< orphan*/  transfer_type; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct jz4780_dma_dev* FUNC1 (struct jz4780_dma_chan*) ; 
 struct jz4780_dma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static bool FUNC3(struct dma_chan *chan, void *param)
{
	struct jz4780_dma_chan *jzchan = FUNC2(chan);
	struct jz4780_dma_dev *jzdma = FUNC1(jzchan);
	struct jz4780_dma_filter_data *data = param;


	if (data->channel > -1) {
		if (data->channel != jzchan->id)
			return false;
	} else if (jzdma->chan_reserved & FUNC0(jzchan->id)) {
		return false;
	}

	jzchan->transfer_type = data->transfer_type;

	return true;
}