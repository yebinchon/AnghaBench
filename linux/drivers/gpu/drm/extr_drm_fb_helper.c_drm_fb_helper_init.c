
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int funcs; } ;
struct drm_fb_helper {TYPE_1__ client; } ;
struct drm_device {struct drm_fb_helper* fb_helper; } ;


 int drm_client_init (struct drm_device*,TYPE_1__*,char*,int *) ;
 int drm_fbdev_emulation ;

int drm_fb_helper_init(struct drm_device *dev,
         struct drm_fb_helper *fb_helper,
         int max_conn_count)
{
 int ret;

 if (!drm_fbdev_emulation) {
  dev->fb_helper = fb_helper;
  return 0;
 }





 if (!fb_helper->client.funcs) {
  ret = drm_client_init(dev, &fb_helper->client, "drm_fb_helper", ((void*)0));
  if (ret)
   return ret;
 }

 dev->fb_helper = fb_helper;

 return 0;
}
