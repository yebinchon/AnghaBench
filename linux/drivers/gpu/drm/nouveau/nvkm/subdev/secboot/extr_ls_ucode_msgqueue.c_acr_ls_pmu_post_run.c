
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct nvkm_secboot {TYPE_2__ subdev; } ;
struct nvkm_pmu {TYPE_3__* falcon; int queue; } ;
struct nvkm_device {struct nvkm_pmu* pmu; } ;
struct nvkm_acr {size_t boot_falcon; } ;
struct TYPE_4__ {scalar_t__ limit; } ;
struct TYPE_6__ {TYPE_1__ data; } ;


 scalar_t__ NVKM_MSGQUEUE_CMDLINE_SIZE ;
 int acr_ls_msgqueue_post_run (int ,TYPE_3__*,scalar_t__) ;
 int nvkm_debug (TYPE_2__*,char*,int ) ;
 int * nvkm_secboot_falcon_name ;

int
acr_ls_pmu_post_run(const struct nvkm_acr *acr, const struct nvkm_secboot *sb)
{
 struct nvkm_device *device = sb->subdev.device;
 struct nvkm_pmu *pmu = device->pmu;
 u32 addr_args = pmu->falcon->data.limit - NVKM_MSGQUEUE_CMDLINE_SIZE;
 int ret;

 ret = acr_ls_msgqueue_post_run(pmu->queue, pmu->falcon, addr_args);
 if (ret)
  return ret;

 nvkm_debug(&sb->subdev, "%s started\n",
     nvkm_secboot_falcon_name[acr->boot_falcon]);

 return 0;
}
