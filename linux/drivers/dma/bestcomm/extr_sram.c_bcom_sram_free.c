
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* base_virt; int lock; int rh; } ;


 TYPE_1__* bcom_sram ;
 int rh_free (int ,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bcom_sram_free(void *ptr)
{
 unsigned long offset;

 if (!ptr)
  return;

 offset = ptr - bcom_sram->base_virt;

 spin_lock(&bcom_sram->lock);
 rh_free(bcom_sram->rh, offset);
 spin_unlock(&bcom_sram->lock);
}
