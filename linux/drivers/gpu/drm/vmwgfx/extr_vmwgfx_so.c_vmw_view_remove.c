
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
struct list_head {int dummy; } ;
typedef enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;


 int EINVAL ;
 int VMW_DEBUG_USER (char*) ;
 int vmw_cmdbuf_res_remove (struct vmw_cmdbuf_res_manager*,int ,int ,struct list_head*,struct vmw_resource**) ;
 int vmw_cmdbuf_res_view ;
 int vmw_view_id_ok (int ,int) ;
 int vmw_view_key (int ,int) ;

int vmw_view_remove(struct vmw_cmdbuf_res_manager *man,
      u32 user_key, enum vmw_view_type view_type,
      struct list_head *list,
      struct vmw_resource **res_p)
{
 if (!vmw_view_id_ok(user_key, view_type)) {
  VMW_DEBUG_USER("Illegal view remove view id.\n");
  return -EINVAL;
 }

 return vmw_cmdbuf_res_remove(man, vmw_cmdbuf_res_view,
         vmw_view_key(user_key, view_type),
         list, res_p);
}
