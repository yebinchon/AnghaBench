
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct dma_fence {int dummy; } ;



bool amdkfd_fence_check_mm(struct dma_fence *f, struct mm_struct *mm)
{
 return 0;
}
