
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_cmdbuf_res_manager {int resources; } ;
struct TYPE_2__ {int key; } ;
struct vmw_cmdbuf_res {int head; struct vmw_cmdbuf_res_manager* man; int res; int state; TYPE_1__ hash; } ;
struct list_head {int dummy; } ;
typedef enum vmw_cmdbuf_res_type { ____Placeholder_vmw_cmdbuf_res_type } vmw_cmdbuf_res_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VMW_CMDBUF_RES_ADD ;
 int drm_ht_insert_item (int *,TYPE_1__*) ;
 struct vmw_cmdbuf_res* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 scalar_t__ unlikely (int) ;
 int vmw_resource_reference (struct vmw_resource*) ;

int vmw_cmdbuf_res_add(struct vmw_cmdbuf_res_manager *man,
         enum vmw_cmdbuf_res_type res_type,
         u32 user_key,
         struct vmw_resource *res,
         struct list_head *list)
{
 struct vmw_cmdbuf_res *cres;
 int ret;

 cres = kzalloc(sizeof(*cres), GFP_KERNEL);
 if (unlikely(!cres))
  return -ENOMEM;

 cres->hash.key = user_key | (res_type << 24);
 ret = drm_ht_insert_item(&man->resources, &cres->hash);
 if (unlikely(ret != 0))
  goto out_invalid_key;

 cres->state = VMW_CMDBUF_RES_ADD;
 cres->res = vmw_resource_reference(res);
 cres->man = man;
 list_add_tail(&cres->head, list);

out_invalid_key:
 return ret;
}
