
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum a2xx_sq_surfaceformat { ____Placeholder_a2xx_sq_surfaceformat } a2xx_sq_surfaceformat ;


 int A2XX_SQ_TEX_1_FORMAT__MASK ;
 int A2XX_SQ_TEX_1_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_1_FORMAT(enum a2xx_sq_surfaceformat val)
{
 return ((val) << A2XX_SQ_TEX_1_FORMAT__SHIFT) & A2XX_SQ_TEX_1_FORMAT__MASK;
}
