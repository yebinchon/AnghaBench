
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_sw_context {int dummy; } ;
struct vmw_private {int dummy; } ;
typedef int SVGA3dCmdHeader ;


 int EINVAL ;

__attribute__((used)) static int vmw_cmd_invalid(struct vmw_private *dev_priv,
      struct vmw_sw_context *sw_context,
      SVGA3dCmdHeader *header)
{
 return -EINVAL;
}
