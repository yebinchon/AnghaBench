
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_gpu {scalar_t__ mmio; } ;


 int msm_writel (int,scalar_t__) ;

__attribute__((used)) static inline void gpu_write(struct msm_gpu *gpu, u32 reg, u32 data)
{
 msm_writel(data, gpu->mmio + (reg << 2));
}
