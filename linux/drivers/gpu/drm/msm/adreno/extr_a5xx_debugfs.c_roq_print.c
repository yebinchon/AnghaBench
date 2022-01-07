
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_gpu {int dummy; } ;
struct drm_printer {int dummy; } ;


 int REG_A5XX_CP_ROQ_DBG_ADDR ;
 int REG_A5XX_CP_ROQ_DBG_DATA ;
 int drm_printf (struct drm_printer*,char*,...) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;

__attribute__((used)) static int roq_print(struct msm_gpu *gpu, struct drm_printer *p)
{
 int i;

 drm_printf(p, "ROQ state:\n");
 gpu_write(gpu, REG_A5XX_CP_ROQ_DBG_ADDR, 0);

 for (i = 0; i < 512 / 4; i++) {
  uint32_t val[4];
  int j;
  for (j = 0; j < 4; j++)
   val[j] = gpu_read(gpu, REG_A5XX_CP_ROQ_DBG_DATA);
  drm_printf(p, "  %02x: %08x %08x %08x %08x\n", i,
   val[0], val[1], val[2], val[3]);
 }

 return 0;
}
