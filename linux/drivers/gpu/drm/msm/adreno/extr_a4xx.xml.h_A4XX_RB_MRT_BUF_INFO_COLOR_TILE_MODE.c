
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a4xx_tile_mode { ____Placeholder_a4xx_tile_mode } a4xx_tile_mode ;


 int A4XX_RB_MRT_BUF_INFO_COLOR_TILE_MODE__MASK ;
 int A4XX_RB_MRT_BUF_INFO_COLOR_TILE_MODE__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_RB_MRT_BUF_INFO_COLOR_TILE_MODE(enum a4xx_tile_mode val)
{
 return ((val) << A4XX_RB_MRT_BUF_INFO_COLOR_TILE_MODE__SHIFT) & A4XX_RB_MRT_BUF_INFO_COLOR_TILE_MODE__MASK;
}
