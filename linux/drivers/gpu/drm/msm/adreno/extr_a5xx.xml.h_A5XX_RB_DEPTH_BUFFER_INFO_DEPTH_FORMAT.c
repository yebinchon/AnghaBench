
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a5xx_depth_format { ____Placeholder_a5xx_depth_format } a5xx_depth_format ;


 int A5XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__MASK ;
 int A5XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT(enum a5xx_depth_format val)
{
 return ((val) << A5XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__SHIFT) & A5XX_RB_DEPTH_BUFFER_INFO_DEPTH_FORMAT__MASK;
}
