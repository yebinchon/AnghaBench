
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svga3d_surface_desc {int dummy; } ;
typedef size_t SVGA3dSurfaceFormat ;


 size_t ARRAY_SIZE (struct svga3d_surface_desc const*) ;
 size_t SVGA3D_FORMAT_INVALID ;
 struct svga3d_surface_desc const* svga3d_surface_descs ;

__attribute__((used)) static inline const struct svga3d_surface_desc *
svga3dsurface_get_desc(SVGA3dSurfaceFormat format)
{
 if (format < ARRAY_SIZE(svga3d_surface_descs))
  return &svga3d_surface_descs[format];

 return &svga3d_surface_descs[SVGA3D_FORMAT_INVALID];
}
