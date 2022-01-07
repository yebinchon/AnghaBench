
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;
struct drm_printer {int dummy; } ;


 int REG_A5XX_CP_PFP_STAT_ADDR ;
 int REG_A5XX_CP_PFP_STAT_DATA ;
 int drm_printf (struct drm_printer*,char*,...) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int gpu_write (struct msm_gpu*,int ,int) ;

__attribute__((used)) static int pfp_print(struct msm_gpu *gpu, struct drm_printer *p)
{
 int i;

 drm_printf(p, "PFP state:\n");

 for (i = 0; i < 36; i++) {
  gpu_write(gpu, REG_A5XX_CP_PFP_STAT_ADDR, i);
  drm_printf(p, "  %02x: %08x\n", i,
   gpu_read(gpu, REG_A5XX_CP_PFP_STAT_DATA));
 }

 return 0;
}
