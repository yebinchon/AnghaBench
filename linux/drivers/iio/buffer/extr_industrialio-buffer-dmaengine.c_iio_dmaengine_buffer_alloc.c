
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_buffer {int * access; } ;
struct TYPE_4__ {struct iio_buffer buffer; } ;
struct dmaengine_buffer {unsigned int align; TYPE_2__ queue; int max_size; struct dma_chan* chan; int active; } ;
struct dma_slave_caps {scalar_t__ dst_addr_widths; scalar_t__ src_addr_widths; } ;
struct dma_chan {TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 struct iio_buffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int PTR_ERR (struct dma_chan*) ;
 unsigned int __ffs (scalar_t__) ;
 int dma_get_max_seg_size (int ) ;
 int dma_get_slave_caps (struct dma_chan*,struct dma_slave_caps*) ;
 struct dma_chan* dma_request_slave_channel_reason (struct device*,char const*) ;
 int iio_dma_buffer_init (TYPE_2__*,int ,int *) ;
 int iio_dmaengine_buffer_ops ;
 int iio_dmaengine_default_ops ;
 int kfree (struct dmaengine_buffer*) ;
 struct dmaengine_buffer* kzalloc (int,int ) ;
 unsigned int max (unsigned int,unsigned int) ;

struct iio_buffer *iio_dmaengine_buffer_alloc(struct device *dev,
 const char *channel)
{
 struct dmaengine_buffer *dmaengine_buffer;
 unsigned int width, src_width, dest_width;
 struct dma_slave_caps caps;
 struct dma_chan *chan;
 int ret;

 dmaengine_buffer = kzalloc(sizeof(*dmaengine_buffer), GFP_KERNEL);
 if (!dmaengine_buffer)
  return ERR_PTR(-ENOMEM);

 chan = dma_request_slave_channel_reason(dev, channel);
 if (IS_ERR(chan)) {
  ret = PTR_ERR(chan);
  goto err_free;
 }

 ret = dma_get_slave_caps(chan, &caps);
 if (ret < 0)
  goto err_free;


 if (caps.src_addr_widths)
  src_width = __ffs(caps.src_addr_widths);
 else
  src_width = 1;
 if (caps.dst_addr_widths)
  dest_width = __ffs(caps.dst_addr_widths);
 else
  dest_width = 1;
 width = max(src_width, dest_width);

 INIT_LIST_HEAD(&dmaengine_buffer->active);
 dmaengine_buffer->chan = chan;
 dmaengine_buffer->align = width;
 dmaengine_buffer->max_size = dma_get_max_seg_size(chan->device->dev);

 iio_dma_buffer_init(&dmaengine_buffer->queue, chan->device->dev,
  &iio_dmaengine_default_ops);

 dmaengine_buffer->queue.buffer.access = &iio_dmaengine_buffer_ops;

 return &dmaengine_buffer->queue.buffer;

err_free:
 kfree(dmaengine_buffer);
 return ERR_PTR(ret);
}
