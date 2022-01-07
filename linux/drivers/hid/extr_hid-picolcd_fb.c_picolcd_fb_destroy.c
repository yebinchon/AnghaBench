
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct picolcd_fb_data {int * picolcd; } ;
struct TYPE_2__ {scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; struct picolcd_fb_data* par; } ;


 int WARN_ON (int ) ;
 int fb_deferred_io_cleanup (struct fb_info*) ;
 int framebuffer_release (struct fb_info*) ;
 int vfree (int *) ;

__attribute__((used)) static void picolcd_fb_destroy(struct fb_info *info)
{
 struct picolcd_fb_data *fbdata = info->par;


 fb_deferred_io_cleanup(info);


 WARN_ON(fbdata->picolcd != ((void*)0));

 vfree((u8 *)info->fix.smem_start);
 framebuffer_release(info);
}
