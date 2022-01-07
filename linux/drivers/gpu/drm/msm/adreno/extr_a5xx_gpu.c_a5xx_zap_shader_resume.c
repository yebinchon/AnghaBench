
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_gpu {int name; } ;


 int DRM_ERROR (char*,int ,int) ;
 int GPU_PAS_ID ;
 int SCM_GPU_ZAP_SHADER_RESUME ;
 int qcom_scm_set_remote_state (int ,int ) ;

__attribute__((used)) static int a5xx_zap_shader_resume(struct msm_gpu *gpu)
{
 int ret;

 ret = qcom_scm_set_remote_state(SCM_GPU_ZAP_SHADER_RESUME, GPU_PAS_ID);
 if (ret)
  DRM_ERROR("%s: zap-shader resume failed: %d\n",
   gpu->name, ret);

 return ret;
}
