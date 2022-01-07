
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A4XX_TEX_CONST_4_LAYERSZ__MASK ;
 int A4XX_TEX_CONST_4_LAYERSZ__SHIFT ;

__attribute__((used)) static inline uint32_t A4XX_TEX_CONST_4_LAYERSZ(uint32_t val)
{
 return ((val >> 12) << A4XX_TEX_CONST_4_LAYERSZ__SHIFT) & A4XX_TEX_CONST_4_LAYERSZ__MASK;
}
