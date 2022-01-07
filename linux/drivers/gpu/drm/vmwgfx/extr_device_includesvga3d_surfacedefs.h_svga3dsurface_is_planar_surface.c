
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svga3d_surface_desc {int block_desc; } ;


 int SVGA3DBLOCKDESC_PLANAR_YUV ;

__attribute__((used)) static inline bool
svga3dsurface_is_planar_surface(const struct svga3d_surface_desc *desc)
{
 return (desc->block_desc & SVGA3DBLOCKDESC_PLANAR_YUV) != 0;
}
