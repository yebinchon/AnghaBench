
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a6xx_depth_format { ____Placeholder_a6xx_depth_format } a6xx_depth_format ;


 int A6XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__MASK ;
 int A6XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT(enum a6xx_depth_format val)
{
 return ((val) << A6XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__SHIFT) & A6XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__MASK;
}
