#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_dma_chan {int /*<<< orphan*/  rot_out; int /*<<< orphan*/  rot_in; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;
struct ipu_image_convert_chan {int out_eof_irq; int rot_out_eof_irq; void* rotation_out_chan; void* out_chan; void* rotation_in_chan; void* in_chan; void* ic; int /*<<< orphan*/  ic_task; struct ipu_image_convert_priv* priv; struct ipu_image_convert_dma_chan* dma_ch; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IPU_IRQ_EOF ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  do_bh ; 
 void* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_1__*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  norotate_irq ; 
 int /*<<< orphan*/  FUNC6 (struct ipu_image_convert_chan*) ; 
 int FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ipu_image_convert_chan*) ; 
 int /*<<< orphan*/  rotate_irq ; 

__attribute__((used)) static int FUNC8(struct ipu_image_convert_chan *chan)
{
	const struct ipu_image_convert_dma_chan *dma = chan->dma_ch;
	struct ipu_image_convert_priv *priv = chan->priv;
	int ret;

	/* get IC */
	chan->ic = FUNC3(priv->ipu, chan->ic_task);
	if (FUNC0(chan->ic)) {
		FUNC2(priv->ipu->dev, "could not acquire IC\n");
		ret = FUNC1(chan->ic);
		goto err;
	}

	/* get IDMAC channels */
	chan->in_chan = FUNC5(priv->ipu, dma->in);
	chan->out_chan = FUNC5(priv->ipu, dma->out);
	if (FUNC0(chan->in_chan) || FUNC0(chan->out_chan)) {
		FUNC2(priv->ipu->dev, "could not acquire idmac channels\n");
		ret = -EBUSY;
		goto err;
	}

	chan->rotation_in_chan = FUNC5(priv->ipu, dma->rot_in);
	chan->rotation_out_chan = FUNC5(priv->ipu, dma->rot_out);
	if (FUNC0(chan->rotation_in_chan) || FUNC0(chan->rotation_out_chan)) {
		FUNC2(priv->ipu->dev,
			"could not acquire idmac rotation channels\n");
		ret = -EBUSY;
		goto err;
	}

	/* acquire the EOF interrupts */
	chan->out_eof_irq = FUNC4(priv->ipu,
						  chan->out_chan,
						  IPU_IRQ_EOF);

	ret = FUNC7(chan->out_eof_irq, norotate_irq, do_bh,
				   0, "ipu-ic", chan);
	if (ret < 0) {
		FUNC2(priv->ipu->dev, "could not acquire irq %d\n",
			 chan->out_eof_irq);
		chan->out_eof_irq = -1;
		goto err;
	}

	chan->rot_out_eof_irq = FUNC4(priv->ipu,
						     chan->rotation_out_chan,
						     IPU_IRQ_EOF);

	ret = FUNC7(chan->rot_out_eof_irq, rotate_irq, do_bh,
				   0, "ipu-ic", chan);
	if (ret < 0) {
		FUNC2(priv->ipu->dev, "could not acquire irq %d\n",
			chan->rot_out_eof_irq);
		chan->rot_out_eof_irq = -1;
		goto err;
	}

	return 0;
err:
	FUNC6(chan);
	return ret;
}