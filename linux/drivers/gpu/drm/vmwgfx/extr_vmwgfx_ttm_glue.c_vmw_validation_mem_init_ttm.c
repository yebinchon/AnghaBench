
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_validation_mem {size_t gran; int unreserve_mem; int reserve_mem; } ;
struct vmw_private {struct vmw_validation_mem vvm; } ;


 int vmw_vmt_reserve ;
 int vmw_vmt_unreserve ;

void vmw_validation_mem_init_ttm(struct vmw_private *dev_priv, size_t gran)
{
 struct vmw_validation_mem *vvm = &dev_priv->vvm;

 vvm->reserve_mem = vmw_vmt_reserve;
 vvm->unreserve_mem = vmw_vmt_unreserve;
 vvm->gran = gran;
}
