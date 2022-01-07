
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct talitos_request {int context; int * desc; int (* callback ) (struct device*,int *,int ,int) ;int dma_desc; } ;
struct talitos_private {int fifo_len; TYPE_1__* chan; } ;
struct device {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int tail; int tail_lock; int submit_count; struct talitos_request* fifo; } ;


 int DESC_HDR_DONE ;
 int DMA_BIDIRECTIONAL ;
 int TALITOS_DESC_SIZE ;
 int atomic_dec (int *) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int get_request_hdr (struct talitos_request*,int) ;
 int has_ftr_sec1 (struct talitos_private*) ;
 int rmb () ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct device*,int *,int ,int) ;

__attribute__((used)) static void flush_channel(struct device *dev, int ch, int error, int reset_ch)
{
 struct talitos_private *priv = dev_get_drvdata(dev);
 struct talitos_request *request, saved_req;
 unsigned long flags;
 int tail, status;
 bool is_sec1 = has_ftr_sec1(priv);

 spin_lock_irqsave(&priv->chan[ch].tail_lock, flags);

 tail = priv->chan[ch].tail;
 while (priv->chan[ch].fifo[tail].desc) {
  __be32 hdr;

  request = &priv->chan[ch].fifo[tail];


  rmb();
  hdr = get_request_hdr(request, is_sec1);

  if ((hdr & DESC_HDR_DONE) == DESC_HDR_DONE)
   status = 0;
  else
   if (!error)
    break;
   else
    status = error;

  dma_unmap_single(dev, request->dma_desc,
     TALITOS_DESC_SIZE,
     DMA_BIDIRECTIONAL);


  saved_req.desc = request->desc;
  saved_req.callback = request->callback;
  saved_req.context = request->context;


  smp_wmb();
  request->desc = ((void*)0);


  priv->chan[ch].tail = (tail + 1) & (priv->fifo_len - 1);

  spin_unlock_irqrestore(&priv->chan[ch].tail_lock, flags);

  atomic_dec(&priv->chan[ch].submit_count);

  saved_req.callback(dev, saved_req.desc, saved_req.context,
       status);

  if (error && !reset_ch && status == error)
   return;
  spin_lock_irqsave(&priv->chan[ch].tail_lock, flags);
  tail = priv->chan[ch].tail;
 }

 spin_unlock_irqrestore(&priv->chan[ch].tail_lock, flags);
}
