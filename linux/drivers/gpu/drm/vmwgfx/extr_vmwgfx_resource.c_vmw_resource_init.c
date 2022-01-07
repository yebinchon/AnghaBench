
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_resource {void (* res_free ) (struct vmw_resource*) ;int id; int backup_dirty; int res_dirty; int used_prio; scalar_t__ backup_offset; int * backup; int binding_head; int mob_head; int lru_head; struct vmw_res_func const* func; struct vmw_private* dev_priv; int * hw_destroy; int kref; } ;
struct vmw_res_func {int dummy; } ;
struct vmw_private {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 int vmw_resource_alloc_id (struct vmw_resource*) ;

int vmw_resource_init(struct vmw_private *dev_priv, struct vmw_resource *res,
        bool delay_id,
        void (*res_free) (struct vmw_resource *res),
        const struct vmw_res_func *func)
{
 kref_init(&res->kref);
 res->hw_destroy = ((void*)0);
 res->res_free = res_free;
 res->dev_priv = dev_priv;
 res->func = func;
 INIT_LIST_HEAD(&res->lru_head);
 INIT_LIST_HEAD(&res->mob_head);
 INIT_LIST_HEAD(&res->binding_head);
 res->id = -1;
 res->backup = ((void*)0);
 res->backup_offset = 0;
 res->backup_dirty = 0;
 res->res_dirty = 0;
 res->used_prio = 3;
 if (delay_id)
  return 0;
 else
  return vmw_resource_alloc_id(res);
}
