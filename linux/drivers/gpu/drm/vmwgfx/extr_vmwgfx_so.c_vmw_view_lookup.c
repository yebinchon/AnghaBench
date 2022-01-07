
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_resource {int dummy; } ;
struct vmw_cmdbuf_res_manager {int dummy; } ;
typedef enum vmw_view_type { ____Placeholder_vmw_view_type } vmw_view_type ;


 struct vmw_resource* vmw_cmdbuf_res_lookup (struct vmw_cmdbuf_res_manager*,int ,int ) ;
 int vmw_cmdbuf_res_view ;
 int vmw_view_key (int ,int) ;

struct vmw_resource *vmw_view_lookup(struct vmw_cmdbuf_res_manager *man,
         enum vmw_view_type view_type,
         u32 user_key)
{
 return vmw_cmdbuf_res_lookup(man, vmw_cmdbuf_res_view,
         vmw_view_key(user_key, view_type));
}
