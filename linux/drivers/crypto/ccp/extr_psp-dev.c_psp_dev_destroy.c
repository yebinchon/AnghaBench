
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sp_device {struct psp_device* psp_data; } ;
struct psp_device {scalar_t__ sev_misc; } ;
struct TYPE_2__ {int refcount; } ;


 int kref_put (int *,int ) ;
 TYPE_1__* misc_dev ;
 int sev_exit ;
 int sp_free_psp_irq (struct sp_device*,struct psp_device*) ;

void psp_dev_destroy(struct sp_device *sp)
{
 struct psp_device *psp = sp->psp_data;

 if (!psp)
  return;

 if (psp->sev_misc)
  kref_put(&misc_dev->refcount, sev_exit);

 sp_free_psp_irq(sp, psp);
}
