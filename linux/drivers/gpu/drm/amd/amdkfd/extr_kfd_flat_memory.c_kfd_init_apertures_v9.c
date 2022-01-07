
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct kfd_process_device {int scratch_base; int scratch_limit; TYPE_2__* dev; scalar_t__ gpuvm_limit; int gpuvm_base; int lds_base; int lds_limit; } ;
struct TYPE_3__ {scalar_t__ gpuvm_size; } ;
struct TYPE_4__ {TYPE_1__ shared_resources; } ;


 int MAKE_LDS_APP_BASE_V9 () ;
 int MAKE_LDS_APP_LIMIT (int ) ;
 int MAKE_SCRATCH_APP_BASE_V9 () ;
 int MAKE_SCRATCH_APP_LIMIT (int ) ;
 int SVM_USER_BASE ;

__attribute__((used)) static void kfd_init_apertures_v9(struct kfd_process_device *pdd, uint8_t id)
{
 pdd->lds_base = MAKE_LDS_APP_BASE_V9();
 pdd->lds_limit = MAKE_LDS_APP_LIMIT(pdd->lds_base);







 pdd->gpuvm_base = SVM_USER_BASE;
 pdd->gpuvm_limit =
  pdd->dev->shared_resources.gpuvm_size - 1;

 pdd->scratch_base = MAKE_SCRATCH_APP_BASE_V9();
 pdd->scratch_limit = MAKE_SCRATCH_APP_LIMIT(pdd->scratch_base);
}
