
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_state {int last_tx_not_done; } ;
struct mbox_chan {struct pdc_state* con_priv; } ;


 int PDC_RING_SPACE_MIN ;
 int pdc_rings_full (struct pdc_state*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool pdc_last_tx_done(struct mbox_chan *chan)
{
 struct pdc_state *pdcs = chan->con_priv;
 bool ret;

 if (unlikely(pdc_rings_full(pdcs, PDC_RING_SPACE_MIN,
        PDC_RING_SPACE_MIN))) {
  pdcs->last_tx_not_done++;
  ret = 0;
 } else {
  ret = 1;
 }
 return ret;
}
