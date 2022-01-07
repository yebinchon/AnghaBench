
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int deferred_work; int par; } ;
struct fb_copyarea {int dummy; } ;


 int schedule_delayed_work (int *,int ) ;
 int sys_copyarea (struct fb_info*,struct fb_copyarea const*) ;

__attribute__((used)) static void picolcd_fb_copyarea(struct fb_info *info,
  const struct fb_copyarea *area)
{
 if (!info->par)
  return;
 sys_copyarea(info, area);

 schedule_delayed_work(&info->deferred_work, 0);
}
