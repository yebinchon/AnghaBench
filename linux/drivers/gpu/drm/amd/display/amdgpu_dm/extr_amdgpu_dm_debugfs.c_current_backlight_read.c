
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct drm_info_node {TYPE_1__* minor; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct dc {int dummy; } ;
struct TYPE_4__ {struct dc* dc; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
struct TYPE_3__ {struct drm_device* dev; } ;


 unsigned int dc_get_current_backlight_pwm (struct dc*) ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;

__attribute__((used)) static int current_backlight_read(struct seq_file *m, void *data)
{
 struct drm_info_node *node = (struct drm_info_node *)m->private;
 struct drm_device *dev = node->minor->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct dc *dc = adev->dm.dc;
 unsigned int backlight = dc_get_current_backlight_pwm(dc);

 seq_printf(m, "0x%x\n", backlight);
 return 0;
}
