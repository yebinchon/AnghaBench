
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int surf_size_struct ;
struct svga3d_surface_desc {int dummy; } ;
typedef int SVGA3dSurfaceFormat ;


 struct svga3d_surface_desc* svga3dsurface_get_desc (int ) ;
 scalar_t__ svga3dsurface_get_image_buffer_size (struct svga3d_surface_desc const*,int *,int ) ;
 int svga3dsurface_get_mip_size (int ,scalar_t__) ;

__attribute__((used)) static inline u32
svga3dsurface_get_serialized_size(SVGA3dSurfaceFormat format,
      surf_size_struct base_level_size,
      u32 num_mip_levels,
      u32 num_layers)
{
 const struct svga3d_surface_desc *desc = svga3dsurface_get_desc(format);
 u32 total_size = 0;
 u32 mip;

 for (mip = 0; mip < num_mip_levels; mip++) {
  surf_size_struct size =
   svga3dsurface_get_mip_size(base_level_size, mip);
  total_size += svga3dsurface_get_image_buffer_size(desc,
          &size, 0);
 }

 return total_size * num_layers;
}
