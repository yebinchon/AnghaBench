
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* depth; void* height; void* width; } ;
typedef TYPE_2__ surf_size_struct ;
struct TYPE_5__ {int depth; int height; int width; } ;
struct svga3d_surface_desc {TYPE_1__ block_size; } ;


 void* __KERNEL_DIV_ROUND_UP (void*,int ) ;

__attribute__((used)) static inline void
svga3dsurface_get_size_in_blocks(const struct svga3d_surface_desc *desc,
     const surf_size_struct *pixel_size,
     surf_size_struct *block_size)
{
 block_size->width = __KERNEL_DIV_ROUND_UP(pixel_size->width,
        desc->block_size.width);
 block_size->height = __KERNEL_DIV_ROUND_UP(pixel_size->height,
         desc->block_size.height);
 block_size->depth = __KERNEL_DIV_ROUND_UP(pixel_size->depth,
        desc->block_size.depth);
}
