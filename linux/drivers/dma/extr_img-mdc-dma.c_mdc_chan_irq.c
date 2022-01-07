
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdc_tx_desc {int cmd_loaded; int list_cmds_done; int list_len; int list_period_len; int vd; scalar_t__ cyclic; } ;
struct TYPE_2__ {int lock; } ;
struct mdc_chan {TYPE_1__ vc; struct mdc_tx_desc* desc; int chan_nr; int mdma; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int dev_dbg (int ,char*,int ) ;
 int dev_warn (int ,char*,int ) ;
 unsigned int mdc_get_new_events (struct mdc_chan*) ;
 int mdc_issue_desc (struct mdc_chan*) ;
 int mdma2dev (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchan_cookie_complete (int *) ;
 int vchan_cyclic_callback (int *) ;

__attribute__((used)) static irqreturn_t mdc_chan_irq(int irq, void *dev_id)
{
 struct mdc_chan *mchan = (struct mdc_chan *)dev_id;
 struct mdc_tx_desc *mdesc;
 unsigned int i, new_events;

 spin_lock(&mchan->vc.lock);

 dev_dbg(mdma2dev(mchan->mdma), "IRQ on channel %d\n", mchan->chan_nr);

 new_events = mdc_get_new_events(mchan);

 if (!new_events)
  goto out;

 mdesc = mchan->desc;
 if (!mdesc) {
  dev_warn(mdma2dev(mchan->mdma),
    "IRQ with no active descriptor on channel %d\n",
    mchan->chan_nr);
  goto out;
 }

 for (i = 0; i < new_events; i++) {





  if (!mdesc->cmd_loaded) {
   mdesc->cmd_loaded = 1;
   continue;
  }

  mdesc->list_cmds_done++;
  if (mdesc->cyclic) {
   mdesc->list_cmds_done %= mdesc->list_len;
   if (mdesc->list_cmds_done % mdesc->list_period_len == 0)
    vchan_cyclic_callback(&mdesc->vd);
  } else if (mdesc->list_cmds_done == mdesc->list_len) {
   mchan->desc = ((void*)0);
   vchan_cookie_complete(&mdesc->vd);
   mdc_issue_desc(mchan);
   break;
  }
 }
out:
 spin_unlock(&mchan->vc.lock);

 return IRQ_HANDLED;
}
