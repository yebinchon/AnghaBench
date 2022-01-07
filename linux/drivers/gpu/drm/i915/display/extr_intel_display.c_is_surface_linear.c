
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ DRM_FORMAT_MOD_LINEAR ;

__attribute__((used)) static bool is_surface_linear(u64 modifier, int color_plane)
{
 return modifier == DRM_FORMAT_MOD_LINEAR;
}
