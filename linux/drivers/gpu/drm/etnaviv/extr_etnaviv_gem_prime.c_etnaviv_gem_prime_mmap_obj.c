
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int dma_buf; } ;
struct etnaviv_gem_object {TYPE_1__ base; } ;


 int dma_buf_mmap (int ,struct vm_area_struct*,int ) ;

__attribute__((used)) static int etnaviv_gem_prime_mmap_obj(struct etnaviv_gem_object *etnaviv_obj,
  struct vm_area_struct *vma)
{
 return dma_buf_mmap(etnaviv_obj->base.dma_buf, vma, 0);
}
