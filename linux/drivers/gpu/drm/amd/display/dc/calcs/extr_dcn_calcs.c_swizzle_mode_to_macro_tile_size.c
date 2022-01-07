
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum swizzle_mode_values { ____Placeholder_swizzle_mode_values } swizzle_mode_values ;
typedef enum source_macro_tile_size { ____Placeholder_source_macro_tile_size } source_macro_tile_size ;


 int ASSERT (int ) ;
 int dm_256k_tile ;
 int dm_4k_tile ;
 int dm_64k_tile ;

enum source_macro_tile_size swizzle_mode_to_macro_tile_size(enum swizzle_mode_values sw_mode)
{
 switch (sw_mode) {

 case 134:
  return dm_4k_tile;
 case 144:
 case 143:
  return dm_4k_tile;
 case 137:
 case 135:
 case 136:
  return dm_64k_tile;
 case 129:
 case 128:
  return dm_256k_tile;


 case 148:
 case 147:
  return dm_4k_tile;
 case 142:
 case 140:
 case 141:
  return dm_64k_tile;
 case 133:
 case 132:
  return dm_256k_tile;

 case 146:
 case 145:
  return dm_4k_tile;
 case 139:
 case 138:
  return dm_64k_tile;
 case 131:
 case 130:
  return dm_256k_tile;


 case 149:
 default:
  ASSERT(0);
  return 0;
 }
}
