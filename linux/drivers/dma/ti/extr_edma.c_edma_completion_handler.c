
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct edma_desc {scalar_t__ processed; scalar_t__ pset_nr; scalar_t__ processed_stat; scalar_t__ residue; scalar_t__ residue_stat; scalar_t__ sg_len; int vdesc; scalar_t__ cyclic; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {int lock; TYPE_2__ chan; } ;
struct edma_chan {TYPE_3__ vchan; int ch_num; struct edma_desc* edesc; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;


 int dev_dbg (struct device*,char*,int ) ;
 int edma_execute (struct edma_chan*) ;
 int edma_pause (struct edma_chan*) ;
 int edma_stop (struct edma_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static void edma_completion_handler(struct edma_chan *echan)
{
 struct device *dev = echan->vchan.chan.device->dev;
 struct edma_desc *edesc;

 spin_lock(&echan->vchan.lock);
 edesc = echan->edesc;
 if (edesc) {
  if (edesc->cyclic) {
   vchan_cyclic_callback(&edesc->vdesc);
   spin_unlock(&echan->vchan.lock);
   return;
  } else if (edesc->processed == edesc->pset_nr) {
   edesc->residue = 0;
   edma_stop(echan);
   vchan_cookie_complete(&edesc->vdesc);
   echan->edesc = ((void*)0);

   dev_dbg(dev, "Transfer completed on channel %d\n",
    echan->ch_num);
  } else {
   dev_dbg(dev, "Sub transfer completed on channel %d\n",
    echan->ch_num);

   edma_pause(echan);


   edesc->residue -= edesc->sg_len;
   edesc->residue_stat = edesc->residue;
   edesc->processed_stat = edesc->processed;
  }
  edma_execute(echan);
 }

 spin_unlock(&echan->vchan.lock);
}
