
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_display_info {unsigned int num_bus_formats; int * bus_formats; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int const*,int,int ) ;

int drm_display_info_set_bus_formats(struct drm_display_info *info,
         const u32 *formats,
         unsigned int num_formats)
{
 u32 *fmts = ((void*)0);

 if (!formats && num_formats)
  return -EINVAL;

 if (formats && num_formats) {
  fmts = kmemdup(formats, sizeof(*formats) * num_formats,
          GFP_KERNEL);
  if (!fmts)
   return -ENOMEM;
 }

 kfree(info->bus_formats);
 info->bus_formats = fmts;
 info->num_bus_formats = num_formats;

 return 0;
}
