
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int* dev_private; } ;


 int EINVAL ;
 struct drm_framebuffer* ERR_PTR (int ) ;

__attribute__((used)) static struct drm_framebuffer *fb_create_mock(struct drm_device *dev,
           struct drm_file *file_priv,
           const struct drm_mode_fb_cmd2 *mode_cmd)
{
 int *buffer_created = dev->dev_private;
 *buffer_created = 1;
 return ERR_PTR(-EINVAL);
}
