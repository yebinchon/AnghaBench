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
struct iio_buffer {int /*<<< orphan*/ * access; } ;
struct TYPE_4__ {struct iio_buffer buffer; } ;
struct dmaengine_buffer {unsigned int align; TYPE_2__ queue; int /*<<< orphan*/  max_size; struct dma_chan* chan; int /*<<< orphan*/  active; } ;
struct dma_slave_caps {scalar_t__ dst_addr_widths; scalar_t__ src_addr_widths; } ;
struct dma_chan {TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct iio_buffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dma_chan*) ; 
 int FUNC3 (struct dma_chan*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dma_chan*,struct dma_slave_caps*) ; 
 struct dma_chan* FUNC7 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iio_dmaengine_buffer_ops ; 
 int /*<<< orphan*/  iio_dmaengine_default_ops ; 
 int /*<<< orphan*/  FUNC9 (struct dmaengine_buffer*) ; 
 struct dmaengine_buffer* FUNC10 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (unsigned int,unsigned int) ; 

struct iio_buffer *FUNC12(struct device *dev,
	const char *channel)
{
	struct dmaengine_buffer *dmaengine_buffer;
	unsigned int width, src_width, dest_width;
	struct dma_slave_caps caps;
	struct dma_chan *chan;
	int ret;

	dmaengine_buffer = FUNC10(sizeof(*dmaengine_buffer), GFP_KERNEL);
	if (!dmaengine_buffer)
		return FUNC0(-ENOMEM);

	chan = FUNC7(dev, channel);
	if (FUNC2(chan)) {
		ret = FUNC3(chan);
		goto err_free;
	}

	ret = FUNC6(chan, &caps);
	if (ret < 0)
		goto err_free;

	/* Needs to be aligned to the maximum of the minimums */
	if (caps.src_addr_widths)
		src_width = FUNC4(caps.src_addr_widths);
	else
		src_width = 1;
	if (caps.dst_addr_widths)
		dest_width = FUNC4(caps.dst_addr_widths);
	else
		dest_width = 1;
	width = FUNC11(src_width, dest_width);

	FUNC1(&dmaengine_buffer->active);
	dmaengine_buffer->chan = chan;
	dmaengine_buffer->align = width;
	dmaengine_buffer->max_size = FUNC5(chan->device->dev);

	FUNC8(&dmaengine_buffer->queue, chan->device->dev,
		&iio_dmaengine_default_ops);

	dmaengine_buffer->queue.buffer.access = &iio_dmaengine_buffer_ops;

	return &dmaengine_buffer->queue.buffer;

err_free:
	FUNC9(dmaengine_buffer);
	return FUNC0(ret);
}