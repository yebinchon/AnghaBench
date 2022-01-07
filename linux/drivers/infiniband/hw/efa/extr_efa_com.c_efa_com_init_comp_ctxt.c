
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct efa_comp_ctx {int wait_event; } ;
struct efa_com_admin_queue {int depth; size_t* comp_ctx; size_t* comp_ctx_pool; scalar_t__ comp_ctx_pool_next; int comp_ctx_lock; int dmadev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_kfree (int ,size_t*) ;
 void* devm_kzalloc (int ,size_t,int ) ;
 struct efa_comp_ctx* efa_com_get_comp_ctx (struct efa_com_admin_queue*,size_t,int) ;
 int init_completion (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline int efa_com_init_comp_ctxt(struct efa_com_admin_queue *aq)
{
 size_t pool_size = aq->depth * sizeof(*aq->comp_ctx_pool);
 size_t size = aq->depth * sizeof(struct efa_comp_ctx);
 struct efa_comp_ctx *comp_ctx;
 u16 i;

 aq->comp_ctx = devm_kzalloc(aq->dmadev, size, GFP_KERNEL);
 aq->comp_ctx_pool = devm_kzalloc(aq->dmadev, pool_size, GFP_KERNEL);
 if (!aq->comp_ctx || !aq->comp_ctx_pool) {
  devm_kfree(aq->dmadev, aq->comp_ctx_pool);
  devm_kfree(aq->dmadev, aq->comp_ctx);
  return -ENOMEM;
 }

 for (i = 0; i < aq->depth; i++) {
  comp_ctx = efa_com_get_comp_ctx(aq, i, 0);
  if (comp_ctx)
   init_completion(&comp_ctx->wait_event);

  aq->comp_ctx_pool[i] = i;
 }

 spin_lock_init(&aq->comp_ctx_lock);

 aq->comp_ctx_pool_next = 0;

 return 0;
}
