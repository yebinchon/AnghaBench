
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int A5XX_RB_BLIT_DST_PITCH__MASK ;
 int A5XX_RB_BLIT_DST_PITCH__SHIFT ;

__attribute__((used)) static inline uint32_t A5XX_RB_BLIT_DST_PITCH(uint32_t val)
{
 return ((val >> 6) << A5XX_RB_BLIT_DST_PITCH__SHIFT) & A5XX_RB_BLIT_DST_PITCH__MASK;
}
