
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct etnaviv_gpu {scalar_t__ mmio; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 gpu_read(struct etnaviv_gpu *gpu, u32 reg)
{
 return readl(gpu->mmio + reg);
}
