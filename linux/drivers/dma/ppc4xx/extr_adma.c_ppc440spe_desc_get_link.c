
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ppc440spe_adma_desc_slot {TYPE_1__* hw_next; } ;
struct ppc440spe_adma_chan {int dummy; } ;
struct TYPE_2__ {int phys; } ;



__attribute__((used)) static inline u32 ppc440spe_desc_get_link(struct ppc440spe_adma_desc_slot *desc,
     struct ppc440spe_adma_chan *chan)
{
 if (!desc->hw_next)
  return 0;

 return desc->hw_next->phys;
}
