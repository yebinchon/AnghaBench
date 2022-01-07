
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_cmdbuf_res_manager {int resources; } ;
struct vmw_cmdbuf_res {int res; int hash; int head; } ;


 int WARN_ON (int ) ;
 int drm_ht_remove_item (int *,int *) ;
 int kfree (struct vmw_cmdbuf_res*) ;
 int list_del (int *) ;
 int vmw_resource_unreference (int *) ;

__attribute__((used)) static void vmw_cmdbuf_res_free(struct vmw_cmdbuf_res_manager *man,
    struct vmw_cmdbuf_res *entry)
{
 list_del(&entry->head);
 WARN_ON(drm_ht_remove_item(&man->resources, &entry->hash));
 vmw_resource_unreference(&entry->res);
 kfree(entry);
}
