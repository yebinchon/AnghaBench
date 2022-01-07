
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVGA3dSurfaceFormat ;


 int svga3dsurface_is_dx_screen_target_format (int ) ;
 scalar_t__ svga3dsurface_is_gb_screen_target_format (int ) ;

__attribute__((used)) static inline bool
svga3dsurface_is_screen_target_format(SVGA3dSurfaceFormat format)
{
 if (svga3dsurface_is_gb_screen_target_format(format)) {
  return 1;
 }
 return svga3dsurface_is_dx_screen_target_format(format);
}
