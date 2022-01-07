
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum source_macro_tile_size { ____Placeholder_source_macro_tile_size } source_macro_tile_size ;


 int const dm_256k_tile ;
 int const dm_64k_tile ;

__attribute__((used)) static unsigned int get_blk_size_bytes(const enum source_macro_tile_size tile_size)
{
 if (tile_size == dm_256k_tile)
  return (256 * 1024);
 else if (tile_size == dm_64k_tile)
  return (64 * 1024);
 else
  return (4 * 1024);
}
