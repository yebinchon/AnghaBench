
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEM_BUG_ON (int) ;
 unsigned int I915_TILING_Y ;

__attribute__((used)) static inline unsigned int
i915_gem_tile_height(unsigned int tiling)
{
 GEM_BUG_ON(!tiling);
 return tiling == I915_TILING_Y ? 32 : 8;
}
