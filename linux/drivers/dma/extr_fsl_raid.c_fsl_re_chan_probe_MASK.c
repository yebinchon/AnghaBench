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
typedef  int u8 ;
typedef  int u32 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dma_device {int dummy; } ;
struct fsl_re_drv_private {int /*<<< orphan*/  hw_desc_pool; struct fsl_re_chan** re_jrs; scalar_t__ re_regs; struct dma_device dma_dev; } ;
struct fsl_re_chan_cfg {int /*<<< orphan*/  jr_command; int /*<<< orphan*/  jr_config_1; int /*<<< orphan*/  oubring_size; int /*<<< orphan*/  inbring_size; int /*<<< orphan*/  oubring_base_l; int /*<<< orphan*/  inbring_base_l; int /*<<< orphan*/  oubring_base_h; int /*<<< orphan*/  inbring_base_h; } ;
struct TYPE_2__ {struct fsl_re_chan* private; struct dma_device* device; } ;
struct fsl_re_chan {int inb_phys_addr; int oub_phys_addr; void* inb_ring_virt_addr; struct fsl_re_drv_private* re_dev; struct fsl_re_chan_cfg* jrregs; void* oub_ring_virt_addr; int /*<<< orphan*/  free_q; int /*<<< orphan*/  submit_q; int /*<<< orphan*/  active_q; int /*<<< orphan*/  ack_q; int /*<<< orphan*/  desc_lock; struct device* dev; TYPE_1__ chan; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; int /*<<< orphan*/  irqtask; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int FSL_RE_ADDR_BIT_MASK ; 
 int FSL_RE_ADDR_BIT_SHIFT ; 
 int FSL_RE_CFG1_CBS0 ; 
 int FSL_RE_CFG1_CBSI ; 
 int FSL_RE_ENABLE ; 
 int FSL_RE_REG_LIODN_MASK ; 
 int FSL_RE_RING_SIZE ; 
 int FSL_RE_RING_SIZE_SHIFT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct fsl_re_drv_private* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct fsl_re_chan*) ; 
 struct fsl_re_chan* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  fsl_re_dequeue ; 
 int /*<<< orphan*/  fsl_re_isr ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC9 (struct device_node*,int /*<<< orphan*/ *,struct device*) ; 
 int FUNC10 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct platform_device *ofdev,
		      struct device_node *np, u8 q, u32 off)
{
	struct device *dev, *chandev;
	struct fsl_re_drv_private *re_priv;
	struct fsl_re_chan *chan;
	struct dma_device *dma_dev;
	u32 ptr;
	u32 status;
	int ret = 0, rc;
	struct platform_device *chan_ofdev;

	dev = &ofdev->dev;
	re_priv = FUNC2(dev);
	dma_dev = &re_priv->dma_dev;

	chan = FUNC4(dev, sizeof(*chan), GFP_KERNEL);
	if (!chan)
		return -ENOMEM;

	/* create platform device for chan node */
	chan_ofdev = FUNC9(np, NULL, dev);
	if (!chan_ofdev) {
		FUNC1(dev, "Not able to create ofdev for jr %d\n", q);
		ret = -EINVAL;
		goto err_free;
	}

	/* read reg property from dts */
	rc = FUNC10(np, "reg", &ptr);
	if (rc) {
		FUNC1(dev, "Reg property not found in jr %d\n", q);
		ret = -ENODEV;
		goto err_free;
	}

	chan->jrregs = (struct fsl_re_chan_cfg *)((u8 *)re_priv->re_regs +
			off + ptr);

	/* read irq property from dts */
	chan->irq = FUNC8(np, 0);
	if (!chan->irq) {
		FUNC1(dev, "No IRQ defined for JR %d\n", q);
		ret = -ENODEV;
		goto err_free;
	}

	FUNC13(chan->name, sizeof(chan->name), "re_jr%02d", q);

	chandev = &chan_ofdev->dev;
	FUNC15(&chan->irqtask, fsl_re_dequeue, (unsigned long)chandev);

	ret = FUNC12(chan->irq, fsl_re_isr, 0, chan->name, chandev);
	if (ret) {
		FUNC1(dev, "Unable to register interrupt for JR %d\n", q);
		ret = -EINVAL;
		goto err_free;
	}

	re_priv->re_jrs[q] = chan;
	chan->chan.device = dma_dev;
	chan->chan.private = chan;
	chan->dev = chandev;
	chan->re_dev = re_priv;

	FUNC14(&chan->desc_lock);
	FUNC0(&chan->ack_q);
	FUNC0(&chan->active_q);
	FUNC0(&chan->submit_q);
	FUNC0(&chan->free_q);

	chan->inb_ring_virt_addr = FUNC5(chan->re_dev->hw_desc_pool,
		GFP_KERNEL, &chan->inb_phys_addr);
	if (!chan->inb_ring_virt_addr) {
		FUNC1(dev, "No dma memory for inb_ring_virt_addr\n");
		ret = -ENOMEM;
		goto err_free;
	}

	chan->oub_ring_virt_addr = FUNC5(chan->re_dev->hw_desc_pool,
		GFP_KERNEL, &chan->oub_phys_addr);
	if (!chan->oub_ring_virt_addr) {
		FUNC1(dev, "No dma memory for oub_ring_virt_addr\n");
		ret = -ENOMEM;
		goto err_free_1;
	}

	/* Program the Inbound/Outbound ring base addresses and size */
	FUNC11(&chan->jrregs->inbring_base_h,
		 chan->inb_phys_addr & FSL_RE_ADDR_BIT_MASK);
	FUNC11(&chan->jrregs->oubring_base_h,
		 chan->oub_phys_addr & FSL_RE_ADDR_BIT_MASK);
	FUNC11(&chan->jrregs->inbring_base_l,
		 chan->inb_phys_addr >> FSL_RE_ADDR_BIT_SHIFT);
	FUNC11(&chan->jrregs->oubring_base_l,
		 chan->oub_phys_addr >> FSL_RE_ADDR_BIT_SHIFT);
	FUNC11(&chan->jrregs->inbring_size,
		 FSL_RE_RING_SIZE << FSL_RE_RING_SIZE_SHIFT);
	FUNC11(&chan->jrregs->oubring_size,
		 FSL_RE_RING_SIZE << FSL_RE_RING_SIZE_SHIFT);

	/* Read LIODN value from u-boot */
	status = FUNC7(&chan->jrregs->jr_config_1) & FSL_RE_REG_LIODN_MASK;

	/* Program the CFG reg */
	FUNC11(&chan->jrregs->jr_config_1,
		 FSL_RE_CFG1_CBSI | FSL_RE_CFG1_CBS0 | status);

	FUNC3(chandev, chan);

	/* Enable RE/CHAN */
	FUNC11(&chan->jrregs->jr_command, FSL_RE_ENABLE);

	return 0;

err_free_1:
	FUNC6(chan->re_dev->hw_desc_pool, chan->inb_ring_virt_addr,
		      chan->inb_phys_addr);
err_free:
	return ret;
}