
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct msm_gpu {int nr_rings; int global_faults; int name; TYPE_5__* pdev; } ;
struct TYPE_8__ {int fast_rate; } ;
struct TYPE_7__ {int patchid; int minor; int major; int core; } ;
struct adreno_gpu {int gmem; TYPE_4__* funcs; TYPE_3__ base; TYPE_2__ rev; TYPE_1__* info; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_9__ {int (* get_timestamp ) (struct msm_gpu*,int*) ;} ;
struct TYPE_6__ {int revn; } ;


 int DBG (char*,int ,int) ;
 int EINVAL ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int stub1 (struct msm_gpu*,int*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

int adreno_get_param(struct msm_gpu *gpu, uint32_t param, uint64_t *value)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);

 switch (param) {
 case 132:
  *value = adreno_gpu->info->revn;
  return 0;
 case 133:
  *value = adreno_gpu->gmem;
  return 0;
 case 134:
  *value = 0x100000;
  return 0;
 case 136:
  *value = adreno_gpu->rev.patchid |
    (adreno_gpu->rev.minor << 8) |
    (adreno_gpu->rev.major << 16) |
    (adreno_gpu->rev.core << 24);
  return 0;
 case 131:
  *value = adreno_gpu->base.fast_rate;
  return 0;
 case 128:
  if (adreno_gpu->funcs->get_timestamp) {
   int ret;

   pm_runtime_get_sync(&gpu->pdev->dev);
   ret = adreno_gpu->funcs->get_timestamp(gpu, value);
   pm_runtime_put_autosuspend(&gpu->pdev->dev);

   return ret;
  }
  return -EINVAL;
 case 130:
  *value = gpu->nr_rings;
  return 0;
 case 129:
  *value = 0;
  return 0;
 case 135:
  *value = gpu->global_faults;
  return 0;
 default:
  DBG("%s: invalid param: %u", gpu->name, param);
  return -EINVAL;
 }
}
