
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sgt; } ;
struct vmw_ttm_tt {int mapped; int sg_alloc_size; TYPE_1__ vsgt; struct vmw_private* dev_priv; } ;
struct vmw_private {int map_mode; } ;


 int sg_free_table (int *) ;
 int ttm_mem_global_free (int ,int ) ;


 int vmw_mem_glob (struct vmw_private*) ;
 int vmw_ttm_unmap_from_dma (struct vmw_ttm_tt*) ;

__attribute__((used)) static void vmw_ttm_unmap_dma(struct vmw_ttm_tt *vmw_tt)
{
 struct vmw_private *dev_priv = vmw_tt->dev_priv;

 if (!vmw_tt->vsgt.sgt)
  return;

 switch (dev_priv->map_mode) {
 case 129:
 case 128:
  vmw_ttm_unmap_from_dma(vmw_tt);
  sg_free_table(vmw_tt->vsgt.sgt);
  vmw_tt->vsgt.sgt = ((void*)0);
  ttm_mem_global_free(vmw_mem_glob(dev_priv),
        vmw_tt->sg_alloc_size);
  break;
 default:
  break;
 }
 vmw_tt->mapped = 0;
}
