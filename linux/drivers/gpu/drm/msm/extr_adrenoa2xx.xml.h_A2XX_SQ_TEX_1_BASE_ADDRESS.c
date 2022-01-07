
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A2XX_SQ_TEX_1_BASE_ADDRESS__MASK ;
 int A2XX_SQ_TEX_1_BASE_ADDRESS__SHIFT ;

__attribute__((used)) static inline uint32_t A2XX_SQ_TEX_1_BASE_ADDRESS(uint32_t val)
{
 return ((val >> 12) << A2XX_SQ_TEX_1_BASE_ADDRESS__SHIFT) & A2XX_SQ_TEX_1_BASE_ADDRESS__MASK;
}
