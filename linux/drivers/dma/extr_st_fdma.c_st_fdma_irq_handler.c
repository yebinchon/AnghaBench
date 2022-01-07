
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_fdma_dev {struct st_fdma_chan* chans; } ;
struct TYPE_6__ {int lock; } ;
struct st_fdma_chan {TYPE_2__ vchan; TYPE_1__* fdesc; int status; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int node; } ;
struct TYPE_5__ {TYPE_3__ vdesc; int iscyclic; } ;


 int DMA_COMPLETE ;
 int FDMA_INT_CLR_OFST ;
 unsigned long FDMA_INT_STA_CH ;
 unsigned long FDMA_INT_STA_ERR ;
 int FDMA_INT_STA_OFST ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned long fdma_read (struct st_fdma_dev*,int ) ;
 int fdma_write (struct st_fdma_dev*,unsigned long,int ) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int st_fdma_ch_sta_update (struct st_fdma_chan*,unsigned long) ;
 int st_fdma_xfer_desc (struct st_fdma_chan*) ;
 int vchan_cookie_complete (TYPE_3__*) ;
 int vchan_cyclic_callback (TYPE_3__*) ;

__attribute__((used)) static irqreturn_t st_fdma_irq_handler(int irq, void *dev_id)
{
 struct st_fdma_dev *fdev = dev_id;
 irqreturn_t ret = IRQ_NONE;
 struct st_fdma_chan *fchan = &fdev->chans[0];
 unsigned long int_sta, clr;

 int_sta = fdma_read(fdev, FDMA_INT_STA_OFST);
 clr = int_sta;

 for (; int_sta != 0 ; int_sta >>= 2, fchan++) {
  if (!(int_sta & (FDMA_INT_STA_CH | FDMA_INT_STA_ERR)))
   continue;

  spin_lock(&fchan->vchan.lock);
  st_fdma_ch_sta_update(fchan, int_sta);

  if (fchan->fdesc) {
   if (!fchan->fdesc->iscyclic) {
    list_del(&fchan->fdesc->vdesc.node);
    vchan_cookie_complete(&fchan->fdesc->vdesc);
    fchan->fdesc = ((void*)0);
    fchan->status = DMA_COMPLETE;
   } else {
    vchan_cyclic_callback(&fchan->fdesc->vdesc);
   }


   if (!fchan->fdesc)
    st_fdma_xfer_desc(fchan);
  }

  spin_unlock(&fchan->vchan.lock);
  ret = IRQ_HANDLED;
 }

 fdma_write(fdev, clr, FDMA_INT_CLR_OFST);

 return ret;
}
