
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct kfd_process_device {int scratch_base; int scratch_limit; TYPE_3__* dev; int gpuvm_base; scalar_t__ gpuvm_limit; int lds_base; int lds_limit; } ;
struct TYPE_5__ {scalar_t__ gpuvm_size; } ;
struct TYPE_6__ {TYPE_2__ shared_resources; TYPE_1__* device_info; } ;
struct TYPE_4__ {int needs_iommu_device; } ;


 int MAKE_GPUVM_APP_BASE_VI (scalar_t__) ;
 scalar_t__ MAKE_GPUVM_APP_LIMIT (int ,scalar_t__) ;
 int MAKE_LDS_APP_BASE_VI () ;
 int MAKE_LDS_APP_LIMIT (int ) ;
 int MAKE_SCRATCH_APP_BASE_VI () ;
 int MAKE_SCRATCH_APP_LIMIT (int ) ;
 int SVM_USER_BASE ;

__attribute__((used)) static void kfd_init_apertures_vi(struct kfd_process_device *pdd, uint8_t id)
{




 pdd->lds_base = MAKE_LDS_APP_BASE_VI();
 pdd->lds_limit = MAKE_LDS_APP_LIMIT(pdd->lds_base);

 if (!pdd->dev->device_info->needs_iommu_device) {




  pdd->gpuvm_base = SVM_USER_BASE;
  pdd->gpuvm_limit =
   pdd->dev->shared_resources.gpuvm_size - 1;
 } else {



  pdd->gpuvm_base = MAKE_GPUVM_APP_BASE_VI(id + 1);
  pdd->gpuvm_limit = MAKE_GPUVM_APP_LIMIT(pdd->gpuvm_base,
    pdd->dev->shared_resources.gpuvm_size);
 }

 pdd->scratch_base = MAKE_SCRATCH_APP_BASE_VI();
 pdd->scratch_limit = MAKE_SCRATCH_APP_LIMIT(pdd->scratch_base);
}
