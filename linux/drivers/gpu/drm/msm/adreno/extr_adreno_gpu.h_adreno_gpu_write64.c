
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct adreno_gpu {int dummy; } ;
typedef enum adreno_regs { ____Placeholder_adreno_regs } adreno_regs ;


 int adreno_gpu_write (struct adreno_gpu*,int,int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline void adreno_gpu_write64(struct adreno_gpu *gpu,
  enum adreno_regs lo, enum adreno_regs hi, u64 data)
{
 adreno_gpu_write(gpu, lo, lower_32_bits(data));
 adreno_gpu_write(gpu, hi, upper_32_bits(data));
}
