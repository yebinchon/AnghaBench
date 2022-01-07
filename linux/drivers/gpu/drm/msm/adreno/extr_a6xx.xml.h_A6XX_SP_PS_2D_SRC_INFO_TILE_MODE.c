
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_tile_mode { ____Placeholder_a6xx_tile_mode } a6xx_tile_mode ;


 int A6XX_SP_PS_2D_SRC_INFO_TILE_MODE__MASK ;
 int A6XX_SP_PS_2D_SRC_INFO_TILE_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_SP_PS_2D_SRC_INFO_TILE_MODE(enum a6xx_tile_mode val)
{
 return ((val) << A6XX_SP_PS_2D_SRC_INFO_TILE_MODE__SHIFT) & A6XX_SP_PS_2D_SRC_INFO_TILE_MODE__MASK;
}
