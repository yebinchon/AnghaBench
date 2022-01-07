
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct msm_gpu {scalar_t__ mmio; } ;


 int lower_32_bits (int ) ;
 int msm_writel (int ,scalar_t__) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void gpu_write64(struct msm_gpu *gpu, u32 lo, u32 hi, u64 val)
{

 msm_writel(lower_32_bits(val), gpu->mmio + (lo << 2));
 msm_writel(upper_32_bits(val), gpu->mmio + (hi << 2));
}
