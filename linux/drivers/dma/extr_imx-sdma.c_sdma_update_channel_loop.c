
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tx; } ;
struct sdma_desc {size_t buf_tail; size_t buf_ptail; int num_bd; TYPE_2__ vd; int period_len; int chn_real_count; struct sdma_buffer_descriptor* bd; } ;
struct TYPE_6__ {int lock; } ;
struct sdma_channel {int status; TYPE_3__ vc; struct sdma_desc* desc; } ;
struct TYPE_4__ {int status; int count; } ;
struct sdma_buffer_descriptor {TYPE_1__ mode; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;


 int BD_DONE ;
 int BD_RROR ;
 int DMA_ERROR ;
 int EIO ;
 int dmaengine_desc_get_callback_invoke (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sdma_update_channel_loop(struct sdma_channel *sdmac)
{
 struct sdma_buffer_descriptor *bd;
 int error = 0;
 enum dma_status old_status = sdmac->status;





 while (sdmac->desc) {
  struct sdma_desc *desc = sdmac->desc;

  bd = &desc->bd[desc->buf_tail];

  if (bd->mode.status & BD_DONE)
   break;

  if (bd->mode.status & BD_RROR) {
   bd->mode.status &= ~BD_RROR;
   sdmac->status = DMA_ERROR;
   error = -EIO;
  }






  desc->chn_real_count = bd->mode.count;
  bd->mode.status |= BD_DONE;
  bd->mode.count = desc->period_len;
  desc->buf_ptail = desc->buf_tail;
  desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;







  spin_unlock(&sdmac->vc.lock);
  dmaengine_desc_get_callback_invoke(&desc->vd.tx, ((void*)0));
  spin_lock(&sdmac->vc.lock);

  if (error)
   sdmac->status = old_status;
 }
}
