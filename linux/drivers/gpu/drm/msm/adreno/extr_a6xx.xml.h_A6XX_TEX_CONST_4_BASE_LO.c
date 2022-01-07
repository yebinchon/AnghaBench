
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A6XX_TEX_CONST_4_BASE_LO__MASK ;
 int A6XX_TEX_CONST_4_BASE_LO__SHIFT ;

__attribute__((used)) static inline uint32_t A6XX_TEX_CONST_4_BASE_LO(uint32_t val)
{
 return ((val >> 5) << A6XX_TEX_CONST_4_BASE_LO__SHIFT) & A6XX_TEX_CONST_4_BASE_LO__MASK;
}
