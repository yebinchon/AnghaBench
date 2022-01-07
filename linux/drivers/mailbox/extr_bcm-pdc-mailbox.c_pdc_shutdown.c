
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdc_state {int pdc_idx; TYPE_1__* pdev; } ;
struct mbox_chan {struct pdc_state* con_priv; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int ) ;
 int pdc_ring_free (struct pdc_state*) ;

__attribute__((used)) static void pdc_shutdown(struct mbox_chan *chan)
{
 struct pdc_state *pdcs = chan->con_priv;

 if (!pdcs)
  return;

 dev_dbg(&pdcs->pdev->dev,
  "Shutdown mailbox channel for PDC %u", pdcs->pdc_idx);
 pdc_ring_free(pdcs);
}
