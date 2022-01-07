
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_gpu {int name; } ;
struct adreno_gpu {int* registers; } ;


 int gpu_read (struct msm_gpu*,int) ;
 int printk (char*,int,...) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

void adreno_dump(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 int i;

 if (!adreno_gpu->registers)
  return;


 printk("IO:region %s 00000000 00020000\n", gpu->name);
 for (i = 0; adreno_gpu->registers[i] != ~0; i += 2) {
  uint32_t start = adreno_gpu->registers[i];
  uint32_t end = adreno_gpu->registers[i+1];
  uint32_t addr;

  for (addr = start; addr <= end; addr++) {
   uint32_t val = gpu_read(gpu, addr);
   printk("IO:R %08x %08x\n", addr<<2, val);
  }
 }
}
