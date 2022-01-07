
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vmw_sw_context {int kernel; } ;
struct vmw_private {int dummy; } ;
typedef int SVGAFifoCmdUpdate ;
typedef int SVGAFifoCmdDefineGMRFB ;
typedef int SVGAFifoCmdBlitGMRFBToScreen ;


 int EINVAL ;
 int EPERM ;




 int VMW_DEBUG_USER (char*,int) ;
 scalar_t__ unlikely (int) ;
 int vmw_cmd_check_define_gmrfb (struct vmw_private*,struct vmw_sw_context*,void*) ;

__attribute__((used)) static int vmw_cmd_check_not_3d(struct vmw_private *dev_priv,
    struct vmw_sw_context *sw_context,
    void *buf, uint32_t *size)
{
 uint32_t size_remaining = *size;
 uint32_t cmd_id;

 cmd_id = ((uint32_t *)buf)[0];
 switch (cmd_id) {
 case 128:
  *size = sizeof(uint32_t) + sizeof(SVGAFifoCmdUpdate);
  break;
 case 129:
  *size = sizeof(uint32_t) + sizeof(SVGAFifoCmdDefineGMRFB);
  break;
 case 131:
  *size = sizeof(uint32_t) + sizeof(SVGAFifoCmdBlitGMRFBToScreen);
  break;
 case 130:
  *size = sizeof(uint32_t) + sizeof(SVGAFifoCmdBlitGMRFBToScreen);
  break;
 default:
  VMW_DEBUG_USER("Unsupported SVGA command: %u.\n", cmd_id);
  return -EINVAL;
 }

 if (*size > size_remaining) {
  VMW_DEBUG_USER("Invalid SVGA command (size mismatch): %u.\n",
          cmd_id);
  return -EINVAL;
 }

 if (unlikely(!sw_context->kernel)) {
  VMW_DEBUG_USER("Kernel only SVGA command: %u.\n", cmd_id);
  return -EPERM;
 }

 if (cmd_id == 129)
  return vmw_cmd_check_define_gmrfb(dev_priv, sw_context, buf);

 return 0;
}
