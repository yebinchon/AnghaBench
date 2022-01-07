
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SVGA3dSurfaceFormat ;


 scalar_t__ SVGA3D_B8G8R8A8_UNORM ;
 scalar_t__ SVGA3D_B8G8R8X8_UNORM ;
 scalar_t__ SVGA3D_R8G8B8A8_UNORM ;

__attribute__((used)) static inline bool
svga3dsurface_is_dx_screen_target_format(SVGA3dSurfaceFormat format)
{
 return (format == SVGA3D_R8G8B8A8_UNORM ||
  format == SVGA3D_B8G8R8A8_UNORM ||
  format == SVGA3D_B8G8R8X8_UNORM);
}
