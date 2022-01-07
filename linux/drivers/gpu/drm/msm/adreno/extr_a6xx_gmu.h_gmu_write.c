
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {scalar_t__ mmio; } ;


 void msm_writel (int,scalar_t__) ;

__attribute__((used)) static inline void gmu_write(struct a6xx_gmu *gmu, u32 offset, u32 value)
{
 return msm_writel(value, gmu->mmio + (offset << 2));
}
