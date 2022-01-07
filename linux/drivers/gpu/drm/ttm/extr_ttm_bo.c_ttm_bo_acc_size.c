
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int dummy; } ;
struct ttm_bo_device {int dummy; } ;


 unsigned int PAGE_ALIGN (unsigned long) ;
 unsigned int PAGE_SHIFT ;
 scalar_t__ ttm_round_pot (int) ;

size_t ttm_bo_acc_size(struct ttm_bo_device *bdev,
         unsigned long bo_size,
         unsigned struct_size)
{
 unsigned npages = (PAGE_ALIGN(bo_size)) >> PAGE_SHIFT;
 size_t size = 0;

 size += ttm_round_pot(struct_size);
 size += ttm_round_pot(npages * sizeof(void *));
 size += ttm_round_pot(sizeof(struct ttm_tt));
 return size;
}
