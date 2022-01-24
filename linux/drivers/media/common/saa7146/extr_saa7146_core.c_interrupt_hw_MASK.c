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
typedef  int u32 ;
struct saa7146_dev {scalar_t__ i2c_op; int /*<<< orphan*/  name; int /*<<< orphan*/  i2c_wq; int /*<<< orphan*/  (* vv_callback ) (struct saa7146_dev*,int) ;scalar_t__ vv_data; TYPE_1__* ext; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int irq_mask; int /*<<< orphan*/  (* irq_func ) (struct saa7146_dev*,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  ISR ; 
 int MASK_16 ; 
 int MASK_17 ; 
 int MASK_27 ; 
 int MASK_28 ; 
 int /*<<< orphan*/  PSR ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  SSR ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (struct saa7146_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7146_dev*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7146_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct saa7146_dev *dev = dev_id;
	u32 isr;
	u32 ack_isr;

	/* read out the interrupt status register */
	ack_isr = isr = FUNC4(dev, ISR);

	/* is this our interrupt? */
	if ( 0 == isr ) {
		/* nope, some other device */
		return IRQ_NONE;
	}

	if (dev->ext) {
		if (dev->ext->irq_mask & isr) {
			if (dev->ext->irq_func)
				dev->ext->irq_func(dev, &isr);
			isr &= ~dev->ext->irq_mask;
		}
	}
	if (0 != (isr & (MASK_27))) {
		FUNC0("irq: RPS0 (0x%08x)\n", isr);
		if (dev->vv_data && dev->vv_callback)
			dev->vv_callback(dev,isr);
		isr &= ~MASK_27;
	}
	if (0 != (isr & (MASK_28))) {
		if (dev->vv_data && dev->vv_callback)
			dev->vv_callback(dev,isr);
		isr &= ~MASK_28;
	}
	if (0 != (isr & (MASK_16|MASK_17))) {
		FUNC2(dev, MASK_16|MASK_17);
		/* only wake up if we expect something */
		if (0 != dev->i2c_op) {
			dev->i2c_op = 0;
			FUNC9(&dev->i2c_wq);
		} else {
			u32 psr = FUNC4(dev, PSR);
			u32 ssr = FUNC4(dev, SSR);
			FUNC3("%s: unexpected i2c irq: isr %08x psr %08x ssr %08x\n",
				dev->name, isr, psr, ssr);
		}
		isr &= ~(MASK_16|MASK_17);
	}
	if( 0 != isr ) {
		FUNC1("warning: interrupt enabled, but not handled properly.(0x%08x)\n",
		    isr);
		FUNC1("disabling interrupt source(s)!\n");
		FUNC2(dev,isr);
	}
	FUNC5(dev, ISR, ack_isr);
	return IRQ_HANDLED;
}