
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {void* base_virt; scalar_t__ base_phys; int lock; int rh; } ;


 scalar_t__ IS_ERR_VALUE (unsigned long) ;
 TYPE_1__* bcom_sram ;
 unsigned long rh_alloc_align (int ,int,int,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void* bcom_sram_alloc(int size, int align, phys_addr_t *phys)
{
 unsigned long offset;

 spin_lock(&bcom_sram->lock);
 offset = rh_alloc_align(bcom_sram->rh, size, align, ((void*)0));
 spin_unlock(&bcom_sram->lock);

 if (IS_ERR_VALUE(offset))
  return ((void*)0);

 *phys = bcom_sram->base_phys + offset;
 return bcom_sram->base_virt + offset;
}
