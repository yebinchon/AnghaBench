
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int dummy; } ;


 int cotable_acc_size ;
 int kfree (struct vmw_resource*) ;
 int ttm_mem_global_free (int ,int ) ;
 int vmw_mem_glob (struct vmw_private*) ;

__attribute__((used)) static void vmw_cotable_free(struct vmw_resource *res)
{
 struct vmw_private *dev_priv = res->dev_priv;

 kfree(res);
 ttm_mem_global_free(vmw_mem_glob(dev_priv), cotable_acc_size);
}
