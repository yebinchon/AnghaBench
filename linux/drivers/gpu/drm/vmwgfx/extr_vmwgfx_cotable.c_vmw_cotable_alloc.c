
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vmw_resource {size_t id; int backup_size; int hw_destroy; } ;
struct vmw_private {int dummy; } ;
struct vmw_cotable {int scrubbed; int seen_entries; size_t type; struct vmw_resource res; struct vmw_resource* ctx; int resource_list; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct TYPE_2__ {int size; size_t min_initial_entries; } ;


 int ENOMEM ;
 struct vmw_resource* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 TYPE_1__* co_info ;
 scalar_t__ cotable_acc_size ;
 int kfree (struct vmw_cotable*) ;
 struct vmw_cotable* kzalloc (int,int ) ;
 int ttm_mem_global_alloc (int ,scalar_t__,struct ttm_operation_ctx*) ;
 int ttm_mem_global_free (int ,scalar_t__) ;
 scalar_t__ ttm_round_pot (int) ;
 scalar_t__ unlikely (int) ;
 int vmw_cotable_free ;
 int vmw_cotable_func ;
 int vmw_hw_cotable_destroy ;
 int vmw_mem_glob (struct vmw_private*) ;
 int vmw_resource_init (struct vmw_private*,struct vmw_resource*,int,int ,int *) ;

struct vmw_resource *vmw_cotable_alloc(struct vmw_private *dev_priv,
           struct vmw_resource *ctx,
           u32 type)
{
 struct vmw_cotable *vcotbl;
 struct ttm_operation_ctx ttm_opt_ctx = {
  .interruptible = 1,
  .no_wait_gpu = 0
 };
 int ret;
 u32 num_entries;

 if (unlikely(cotable_acc_size == 0))
  cotable_acc_size = ttm_round_pot(sizeof(struct vmw_cotable));

 ret = ttm_mem_global_alloc(vmw_mem_glob(dev_priv),
       cotable_acc_size, &ttm_opt_ctx);
 if (unlikely(ret))
  return ERR_PTR(ret);

 vcotbl = kzalloc(sizeof(*vcotbl), GFP_KERNEL);
 if (unlikely(!vcotbl)) {
  ret = -ENOMEM;
  goto out_no_alloc;
 }

 ret = vmw_resource_init(dev_priv, &vcotbl->res, 1,
    vmw_cotable_free, &vmw_cotable_func);
 if (unlikely(ret != 0))
  goto out_no_init;

 INIT_LIST_HEAD(&vcotbl->resource_list);
 vcotbl->res.id = type;
 vcotbl->res.backup_size = PAGE_SIZE;
 num_entries = PAGE_SIZE / co_info[type].size;
 if (num_entries < co_info[type].min_initial_entries) {
  vcotbl->res.backup_size = co_info[type].min_initial_entries *
   co_info[type].size;
  vcotbl->res.backup_size =
   (vcotbl->res.backup_size + PAGE_SIZE - 1) & PAGE_MASK;
 }

 vcotbl->scrubbed = 1;
 vcotbl->seen_entries = -1;
 vcotbl->type = type;
 vcotbl->ctx = ctx;

 vcotbl->res.hw_destroy = vmw_hw_cotable_destroy;

 return &vcotbl->res;

out_no_init:
 kfree(vcotbl);
out_no_alloc:
 ttm_mem_global_free(vmw_mem_glob(dev_priv), cotable_acc_size);
 return ERR_PTR(ret);
}
