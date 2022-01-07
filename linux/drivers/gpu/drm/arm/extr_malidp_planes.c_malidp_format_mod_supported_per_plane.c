
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct drm_plane {int dev; } ;


 int malidp_format_mod_supported (int ,int ,int ) ;

__attribute__((used)) static bool malidp_format_mod_supported_per_plane(struct drm_plane *plane,
        u32 format, u64 modifier)
{
 return malidp_format_mod_supported(plane->dev, format, modifier);
}
