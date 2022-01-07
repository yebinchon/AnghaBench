
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy; } ;
struct vmw_ctx_binding_state {struct vmw_private* dev_priv; } ;


 int ttm_mem_global_free (int ,int) ;
 int vfree (struct vmw_ctx_binding_state*) ;
 int vmw_mem_glob (struct vmw_private*) ;

void vmw_binding_state_free(struct vmw_ctx_binding_state *cbs)
{
 struct vmw_private *dev_priv = cbs->dev_priv;

 vfree(cbs);
 ttm_mem_global_free(vmw_mem_glob(dev_priv), sizeof(*cbs));
}
