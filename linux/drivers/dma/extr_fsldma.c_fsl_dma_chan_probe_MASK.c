#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int start; } ;
struct TYPE_3__ {int /*<<< orphan*/  channels; } ;
struct fsldma_device {int feature; scalar_t__ irq; int /*<<< orphan*/  dev; TYPE_1__ common; struct fsldma_chan** chan; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_node; TYPE_1__* device; } ;
struct fsldma_chan {int feature; int id; int idle; int /*<<< orphan*/  regs; scalar_t__ irq; TYPE_2__ common; int /*<<< orphan*/  pm_state; int /*<<< orphan*/  ld_completed; int /*<<< orphan*/  ld_running; int /*<<< orphan*/  ld_pending; int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  set_request_count; int /*<<< orphan*/  set_dst_loop_size; int /*<<< orphan*/  set_src_loop_size; int /*<<< orphan*/  toggle_ext_start; int /*<<< orphan*/  toggle_ext_pause; int /*<<< orphan*/  name; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
#define  FSL_DMA_IP_83XX 129 
#define  FSL_DMA_IP_85XX 128 
 int FSL_DMA_IP_MASK ; 
 int FSL_DMA_MAX_CHANS_PER_DEVICE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  dma_do_tasklet ; 
 int /*<<< orphan*/  FUNC5 (struct fsldma_chan*) ; 
 int /*<<< orphan*/  fsl_chan_set_dst_loop_size ; 
 int /*<<< orphan*/  fsl_chan_set_request_count ; 
 int /*<<< orphan*/  fsl_chan_set_src_loop_size ; 
 int /*<<< orphan*/  fsl_chan_toggle_ext_pause ; 
 int /*<<< orphan*/  fsl_chan_toggle_ext_start ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fsldma_chan*) ; 
 struct fsldma_chan* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fsldma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC17(struct fsldma_device *fdev,
	struct device_node *node, u32 feature, const char *compatible)
{
	struct fsldma_chan *chan;
	struct resource res;
	int err;

	/* alloc channel */
	chan = FUNC9(sizeof(*chan), GFP_KERNEL);
	if (!chan) {
		err = -ENOMEM;
		goto out_return;
	}

	/* ioremap registers for use */
	chan->regs = FUNC12(node, 0);
	if (!chan->regs) {
		FUNC2(fdev->dev, "unable to ioremap registers\n");
		err = -ENOMEM;
		goto out_free_chan;
	}

	err = FUNC11(node, 0, &res);
	if (err) {
		FUNC2(fdev->dev, "unable to find 'reg' property\n");
		goto out_iounmap_regs;
	}

	chan->feature = feature;
	if (!fdev->feature)
		fdev->feature = chan->feature;

	/*
	 * If the DMA device's feature is different than the feature
	 * of its channels, report the bug
	 */
	FUNC1(fdev->feature != chan->feature);

	chan->dev = fdev->dev;
	chan->id = (res.start & 0xfff) < 0x300 ?
		   ((res.start - 0x100) & 0xfff) >> 7 :
		   ((res.start - 0x200) & 0xfff) >> 7;
	if (chan->id >= FSL_DMA_MAX_CHANS_PER_DEVICE) {
		FUNC2(fdev->dev, "too many channels for device\n");
		err = -EINVAL;
		goto out_iounmap_regs;
	}

	fdev->chan[chan->id] = chan;
	FUNC16(&chan->tasklet, dma_do_tasklet, (unsigned long)chan);
	FUNC14(chan->name, sizeof(chan->name), "chan%d", chan->id);

	/* Initialize the channel */
	FUNC5(chan);

	/* Clear cdar registers */
	FUNC13(chan, 0);

	switch (chan->feature & FSL_DMA_IP_MASK) {
	case FSL_DMA_IP_85XX:
		chan->toggle_ext_pause = fsl_chan_toggle_ext_pause;
		/* Fall through */
	case FSL_DMA_IP_83XX:
		chan->toggle_ext_start = fsl_chan_toggle_ext_start;
		chan->set_src_loop_size = fsl_chan_set_src_loop_size;
		chan->set_dst_loop_size = fsl_chan_set_dst_loop_size;
		chan->set_request_count = fsl_chan_set_request_count;
	}

	FUNC15(&chan->desc_lock);
	FUNC0(&chan->ld_pending);
	FUNC0(&chan->ld_running);
	FUNC0(&chan->ld_completed);
	chan->idle = true;
#ifdef CONFIG_PM
	chan->pm_state = RUNNING;
#endif

	chan->common.device = &fdev->common;
	FUNC4(&chan->common);

	/* find the IRQ line, if it exists in the device tree */
	chan->irq = FUNC7(node, 0);

	/* Add the channel to DMA device channel list */
	FUNC10(&chan->common.device_node, &fdev->common.channels);

	FUNC3(fdev->dev, "#%d (%s), irq %d\n", chan->id, compatible,
		 chan->irq ? chan->irq : fdev->irq);

	return 0;

out_iounmap_regs:
	FUNC6(chan->regs);
out_free_chan:
	FUNC8(chan);
out_return:
	return err;
}