
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct a6xx_gmu {scalar_t__ mmio; } ;


 int msm_readl (scalar_t__) ;

__attribute__((used)) static inline u32 gmu_read(struct a6xx_gmu *gmu, u32 offset)
{
 return msm_readl(gmu->mmio + (offset << 2));
}
