
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udl_fbdev {scalar_t__ fb_count; } ;
struct fb_info {int node; TYPE_1__* fbops; int * fbdefio; struct udl_fbdev* par; } ;
struct TYPE_2__ {int fb_mmap; } ;


 int fb_deferred_io_cleanup (struct fb_info*) ;
 int kfree (int *) ;
 int pr_debug (char*,int ,int,scalar_t__) ;
 int udl_fb_mmap ;

__attribute__((used)) static int udl_fb_release(struct fb_info *info, int user)
{
 struct udl_fbdev *ufbdev = info->par;

 ufbdev->fb_count--;
 pr_debug("released /dev/fb%d user=%d count=%d\n",
  info->node, user, ufbdev->fb_count);

 return 0;
}
