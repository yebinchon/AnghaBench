
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct fb_info {int dummy; } ;


 int picolcd_fb_update (struct fb_info*) ;

__attribute__((used)) static void picolcd_fb_deferred_io(struct fb_info *info, struct list_head *pagelist)
{
 picolcd_fb_update(info);
}
