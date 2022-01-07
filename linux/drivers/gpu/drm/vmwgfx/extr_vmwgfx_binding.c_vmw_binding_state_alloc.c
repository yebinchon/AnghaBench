
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {int dummy; } ;
struct vmw_ctx_binding_state {int list; struct vmw_private* dev_priv; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;


 int ENOMEM ;
 struct vmw_ctx_binding_state* ERR_PTR (int) ;
 int INIT_LIST_HEAD (int *) ;
 int ttm_mem_global_alloc (int ,int,struct ttm_operation_ctx*) ;
 int ttm_mem_global_free (int ,int) ;
 int vmw_mem_glob (struct vmw_private*) ;
 struct vmw_ctx_binding_state* vzalloc (int) ;

struct vmw_ctx_binding_state *
vmw_binding_state_alloc(struct vmw_private *dev_priv)
{
 struct vmw_ctx_binding_state *cbs;
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };
 int ret;

 ret = ttm_mem_global_alloc(vmw_mem_glob(dev_priv), sizeof(*cbs),
    &ctx);
 if (ret)
  return ERR_PTR(ret);

 cbs = vzalloc(sizeof(*cbs));
 if (!cbs) {
  ttm_mem_global_free(vmw_mem_glob(dev_priv), sizeof(*cbs));
  return ERR_PTR(-ENOMEM);
 }

 cbs->dev_priv = dev_priv;
 INIT_LIST_HEAD(&cbs->list);

 return cbs;
}
