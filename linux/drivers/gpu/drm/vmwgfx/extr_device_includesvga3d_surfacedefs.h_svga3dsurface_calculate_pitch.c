
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int width; } ;
typedef TYPE_1__ surf_size_struct ;
struct svga3d_surface_desc {int pitch_bytes_per_block; } ;


 int svga3dsurface_get_size_in_blocks (struct svga3d_surface_desc const*,TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static inline u32
svga3dsurface_calculate_pitch(const struct svga3d_surface_desc *desc,
         const surf_size_struct *size)
{
 u32 pitch;
 surf_size_struct blocks;

 svga3dsurface_get_size_in_blocks(desc, size, &blocks);

 pitch = blocks.width * desc->pitch_bytes_per_block;

 return pitch;
}
