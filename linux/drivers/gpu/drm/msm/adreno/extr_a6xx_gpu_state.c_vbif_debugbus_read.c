
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msm_gpu {int dummy; } ;


 int REG_A6XX_VBIF_TEST_BUS_OUT ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int,int) ;

__attribute__((used)) static int vbif_debugbus_read(struct msm_gpu *gpu, u32 ctrl0, u32 ctrl1,
  u32 reg, int count, u32 *data)
{
 int i;

 gpu_write(gpu, ctrl0, reg);

 for (i = 0; i < count; i++) {
  gpu_write(gpu, ctrl1, i);
  data[i] = gpu_read(gpu, REG_A6XX_VBIF_TEST_BUS_OUT);
 }

 return count;
}
