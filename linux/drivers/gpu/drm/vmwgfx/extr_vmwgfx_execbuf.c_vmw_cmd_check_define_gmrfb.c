
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_sw_context {int dummy; } ;
struct vmw_private {int dummy; } ;
struct vmw_buffer_object {int dummy; } ;
struct TYPE_2__ {int ptr; } ;
typedef TYPE_1__ SVGAFifoCmdDefineGMRFB ;


 int vmw_translate_guest_ptr (struct vmw_private*,struct vmw_sw_context*,int *,struct vmw_buffer_object**) ;

__attribute__((used)) static int vmw_cmd_check_define_gmrfb(struct vmw_private *dev_priv,
          struct vmw_sw_context *sw_context,
          void *buf)
{
 struct vmw_buffer_object *vmw_bo;

 struct {
  uint32_t header;
  SVGAFifoCmdDefineGMRFB body;
 } *cmd = buf;

 return vmw_translate_guest_ptr(dev_priv, sw_context, &cmd->body.ptr,
           &vmw_bo);
}
