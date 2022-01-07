
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct etnaviv_gpu {scalar_t__ mmio; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void gpu_write(struct etnaviv_gpu *gpu, u32 reg, u32 data)
{
 writel(data, gpu->mmio + reg);
}
