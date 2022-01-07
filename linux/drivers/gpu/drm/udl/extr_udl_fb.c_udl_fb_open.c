
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_3__ {TYPE_2__ base; } ;
struct udl_fbdev {int fb_count; TYPE_1__ ufb; } ;
struct udl_device {int drm; } ;
struct fb_info {int node; struct fb_deferred_io* fbdefio; struct udl_fbdev* par; } ;
struct fb_deferred_io {int deferred_io; int delay; } ;
struct drm_device {int dummy; } ;


 int DL_DEFIO_WRITE_DELAY ;
 int ENODEV ;
 int GFP_KERNEL ;
 scalar_t__ drm_dev_is_unplugged (int *) ;
 int drm_fb_helper_deferred_io ;
 int fb_deferred_io_init (struct fb_info*) ;
 scalar_t__ fb_defio ;
 struct fb_deferred_io* kzalloc (int,int ) ;
 int pr_debug (char*,int ,int,struct fb_info*,int ) ;
 struct udl_device* to_udl (struct drm_device*) ;

__attribute__((used)) static int udl_fb_open(struct fb_info *info, int user)
{
 struct udl_fbdev *ufbdev = info->par;
 struct drm_device *dev = ufbdev->ufb.base.dev;
 struct udl_device *udl = to_udl(dev);


 if (drm_dev_is_unplugged(&udl->drm))
  return -ENODEV;

 ufbdev->fb_count++;
 pr_debug("open /dev/fb%d user=%d fb_info=%p count=%d\n",
    info->node, user, info, ufbdev->fb_count);

 return 0;
}
