
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int WARN_ON (int) ;

__attribute__((used)) static u32 intel_adjust_tile_offset(int *x, int *y,
        unsigned int tile_width,
        unsigned int tile_height,
        unsigned int tile_size,
        unsigned int pitch_tiles,
        u32 old_offset,
        u32 new_offset)
{
 unsigned int pitch_pixels = pitch_tiles * tile_width;
 unsigned int tiles;

 WARN_ON(old_offset & (tile_size - 1));
 WARN_ON(new_offset & (tile_size - 1));
 WARN_ON(new_offset > old_offset);

 tiles = (old_offset - new_offset) / tile_size;

 *y += tiles / pitch_tiles * tile_height;
 *x += tiles % pitch_tiles * tile_width;


 *y += *x / pitch_pixels * tile_height;
 *x %= pitch_pixels;

 return new_offset;
}
