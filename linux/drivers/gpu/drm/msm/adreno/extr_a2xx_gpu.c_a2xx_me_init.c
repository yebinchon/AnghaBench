
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_1__* funcs; struct msm_ringbuffer** rb; } ;
struct TYPE_2__ {int (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;


 int CP_ME_INIT ;
 int CP_SET_PROTECTED_MODE ;
 int OUT_PKT3 (struct msm_ringbuffer*,int ,int) ;
 int OUT_RING (struct msm_ringbuffer*,int) ;
 int REG_A2XX_PA_SC_LINE_CNTL ;
 int REG_A2XX_PA_SC_WINDOW_OFFSET ;
 int REG_A2XX_PA_SU_POINT_SIZE ;
 int REG_A2XX_PA_SU_POLY_OFFSET_FRONT_SCALE ;
 int REG_A2XX_RB_DEPTHCONTROL ;
 int REG_A2XX_RB_SURFACE_INFO ;
 int REG_A2XX_SQ_PROGRAM_CNTL ;
 int REG_A2XX_VGT_MAX_VTX_INDX ;
 int a2xx_idle (struct msm_gpu*) ;
 int stub1 (struct msm_gpu*,struct msm_ringbuffer*) ;

__attribute__((used)) static bool a2xx_me_init(struct msm_gpu *gpu)
{
 struct msm_ringbuffer *ring = gpu->rb[0];

 OUT_PKT3(ring, CP_ME_INIT, 18);


 OUT_RING(ring, 0x000003ff);

 OUT_RING(ring, 0x00000000);

 OUT_RING(ring, 0x00000000);

 OUT_RING(ring, REG_A2XX_RB_SURFACE_INFO - 0x2000);
 OUT_RING(ring, REG_A2XX_PA_SC_WINDOW_OFFSET - 0x2000);
 OUT_RING(ring, REG_A2XX_VGT_MAX_VTX_INDX - 0x2000);
 OUT_RING(ring, REG_A2XX_SQ_PROGRAM_CNTL - 0x2000);
 OUT_RING(ring, REG_A2XX_RB_DEPTHCONTROL - 0x2000);
 OUT_RING(ring, REG_A2XX_PA_SU_POINT_SIZE - 0x2000);
 OUT_RING(ring, REG_A2XX_PA_SC_LINE_CNTL - 0x2000);
 OUT_RING(ring, REG_A2XX_PA_SU_POLY_OFFSET_FRONT_SCALE - 0x2000);



 OUT_RING(ring, 0x80000180);

 OUT_RING(ring, 0x00000001);


 OUT_RING(ring, 0x00000000);

 OUT_RING(ring, 0x00000000);

 OUT_RING(ring, 0x200001f2);

 OUT_RING(ring, 0x00000000);

 OUT_RING(ring, 0x00000000);


 OUT_PKT3(ring, CP_SET_PROTECTED_MODE, 1);
 OUT_RING(ring, 1);

 gpu->funcs->flush(gpu, ring);
 return a2xx_idle(gpu);
}
