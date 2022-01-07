
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a4xx_depth_format { ____Placeholder_a4xx_depth_format } a4xx_depth_format ;


 int A4XX_GRAS_DEPTH_CONTROL_FORMAT__MASK ;
 int A4XX_GRAS_DEPTH_CONTROL_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_GRAS_DEPTH_CONTROL_FORMAT(enum a4xx_depth_format val)
{
 return ((val) << A4XX_GRAS_DEPTH_CONTROL_FORMAT__SHIFT) & A4XX_GRAS_DEPTH_CONTROL_FORMAT__MASK;
}
