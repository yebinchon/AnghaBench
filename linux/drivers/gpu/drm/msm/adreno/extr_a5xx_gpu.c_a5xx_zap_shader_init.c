
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int dummy; } ;


 int GPU_PAS_ID ;
 int a5xx_zap_shader_resume (struct msm_gpu*) ;
 int adreno_zap_shader_load (struct msm_gpu*,int ) ;

__attribute__((used)) static int a5xx_zap_shader_init(struct msm_gpu *gpu)
{
 static bool loaded;
 int ret;





 if (loaded)
  return a5xx_zap_shader_resume(gpu);

 ret = adreno_zap_shader_load(gpu, GPU_PAS_ID);

 loaded = !ret;
 return ret;
}
