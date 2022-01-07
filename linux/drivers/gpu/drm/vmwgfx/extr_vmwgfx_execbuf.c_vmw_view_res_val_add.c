
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {int dummy; } ;
struct vmw_resource {int dummy; } ;


 int VMW_RES_DIRTY_NONE ;
 int vmw_execbuf_res_noctx_val_add (struct vmw_sw_context*,struct vmw_resource*,int ) ;
 int vmw_view_dirtying (struct vmw_resource*) ;
 struct vmw_resource* vmw_view_srf (struct vmw_resource*) ;

__attribute__((used)) static int vmw_view_res_val_add(struct vmw_sw_context *sw_context,
    struct vmw_resource *view)
{
 int ret;





 ret = vmw_execbuf_res_noctx_val_add(sw_context, vmw_view_srf(view),
         vmw_view_dirtying(view));
 if (ret)
  return ret;

 return vmw_execbuf_res_noctx_val_add(sw_context, view,
          VMW_RES_DIRTY_NONE);
}
