
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct resource {int end; struct resource* sibling; } ;
typedef int resource_size_t ;
struct TYPE_2__ {struct resource* child; } ;


 TYPE_1__ iomem_resource ;
 int max (int,int ) ;
 scalar_t__ mem_encrypt_active () ;
 scalar_t__ xen_pv_domain () ;

bool drm_need_swiotlb(int dma_bits)
{
 struct resource *tmp;
 resource_size_t max_iomem = 0;
 if (xen_pv_domain())
  return 1;





 if (mem_encrypt_active())
  return 1;

 for (tmp = iomem_resource.child; tmp; tmp = tmp->sibling) {
  max_iomem = max(max_iomem, tmp->end);
 }

 return max_iomem > ((u64)1 << dma_bits);
}
