
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct edmacc_param {scalar_t__ a_b_cnt; scalar_t__ ccnt; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_6__ {int lock; TYPE_2__ chan; } ;
struct edma_chan {int missed; TYPE_3__ vchan; int * slot; int edesc; struct edma_cc* ecc; } ;
struct edma_cc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;


 int dev_dbg (struct device*,char*) ;
 int edma_clean_channel (struct edma_chan*) ;
 int edma_read_slot (struct edma_cc*,int ,struct edmacc_param*) ;
 int edma_start (struct edma_chan*) ;
 int edma_stop (struct edma_chan*) ;
 int edma_trigger_channel (struct edma_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void edma_error_handler(struct edma_chan *echan)
{
 struct edma_cc *ecc = echan->ecc;
 struct device *dev = echan->vchan.chan.device->dev;
 struct edmacc_param p;
 int err;

 if (!echan->edesc)
  return;

 spin_lock(&echan->vchan.lock);

 err = edma_read_slot(ecc, echan->slot[0], &p);
 if (err || (p.a_b_cnt == 0 && p.ccnt == 0)) {
  dev_dbg(dev, "Error on null slot, setting miss\n");
  echan->missed = 1;
 } else {




  dev_dbg(dev, "Missed event, TRIGGERING\n");
  edma_clean_channel(echan);
  edma_stop(echan);
  edma_start(echan);
  edma_trigger_channel(echan);
 }
 spin_unlock(&echan->vchan.lock);
}
