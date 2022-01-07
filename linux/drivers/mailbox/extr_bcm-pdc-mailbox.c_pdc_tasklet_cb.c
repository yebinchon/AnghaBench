
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdc_state {scalar_t__ pdc_reg_vbase; } ;


 int PDC_INTMASK ;
 scalar_t__ PDC_INTMASK_OFFSET ;
 int iowrite32 (int ,scalar_t__) ;
 int pdc_receive (struct pdc_state*) ;

__attribute__((used)) static void pdc_tasklet_cb(unsigned long data)
{
 struct pdc_state *pdcs = (struct pdc_state *)data;

 pdc_receive(pdcs);


 iowrite32(PDC_INTMASK, pdcs->pdc_reg_vbase + PDC_INTMASK_OFFSET);
}
