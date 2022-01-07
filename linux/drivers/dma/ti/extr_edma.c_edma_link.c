
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_cc {unsigned int num_slots; int dev; } ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 scalar_t__ EDMA_CTLR (unsigned int) ;
 int PARM_LINK_BCNTRLD ;
 int PARM_OFFSET (unsigned int) ;
 int dev_warn (int ,char*) ;
 int edma_param_modify (struct edma_cc*,int ,unsigned int,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void edma_link(struct edma_cc *ecc, unsigned from, unsigned to)
{
 if (unlikely(EDMA_CTLR(from) != EDMA_CTLR(to)))
  dev_warn(ecc->dev, "Ignoring eDMA instance for linking\n");

 from = EDMA_CHAN_SLOT(from);
 to = EDMA_CHAN_SLOT(to);
 if (from >= ecc->num_slots || to >= ecc->num_slots)
  return;

 edma_param_modify(ecc, PARM_LINK_BCNTRLD, from, 0xffff0000,
     PARM_OFFSET(to));
}
