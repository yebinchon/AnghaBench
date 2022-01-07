
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc440spe_adma_desc_slot {int hw_desc; struct ppc440spe_adma_desc_slot* hw_next; } ;
struct ppc440spe_adma_chan {int dummy; } ;


 int print_cb (struct ppc440spe_adma_chan*,int ) ;

__attribute__((used)) static void print_cb_list(struct ppc440spe_adma_chan *chan,
     struct ppc440spe_adma_desc_slot *iter)
{
 for (; iter; iter = iter->hw_next)
  print_cb(chan, iter->hw_desc);
}
