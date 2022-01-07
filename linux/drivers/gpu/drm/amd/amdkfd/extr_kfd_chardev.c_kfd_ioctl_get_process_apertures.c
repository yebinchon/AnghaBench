
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kfd_process_device_apertures {size_t gpu_id; size_t lds_base; size_t lds_limit; size_t gpuvm_base; size_t gpuvm_limit; size_t scratch_base; size_t scratch_limit; } ;
struct kfd_process_device {size_t lds_base; size_t lds_limit; size_t gpuvm_base; size_t gpuvm_limit; size_t scratch_base; size_t scratch_limit; TYPE_1__* dev; } ;
struct kfd_process {size_t pasid; int mutex; } ;
struct kfd_ioctl_get_process_apertures_args {size_t num_of_nodes; struct kfd_process_device_apertures* process_apertures; } ;
struct file {int dummy; } ;
struct TYPE_2__ {size_t id; } ;


 size_t NUM_OF_SUPPORTED_GPUS ;
 int dev_dbg (int ,char*,size_t) ;
 int kfd_device ;
 struct kfd_process_device* kfd_get_first_process_device_data (struct kfd_process*) ;
 struct kfd_process_device* kfd_get_next_process_device_data (struct kfd_process*,struct kfd_process_device*) ;
 scalar_t__ kfd_has_process_device_data (struct kfd_process*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kfd_ioctl_get_process_apertures(struct file *filp,
    struct kfd_process *p, void *data)
{
 struct kfd_ioctl_get_process_apertures_args *args = data;
 struct kfd_process_device_apertures *pAperture;
 struct kfd_process_device *pdd;

 dev_dbg(kfd_device, "get apertures for PASID %d", p->pasid);

 args->num_of_nodes = 0;

 mutex_lock(&p->mutex);


 if (kfd_has_process_device_data(p)) {

  pdd = kfd_get_first_process_device_data(p);
  do {
   pAperture =
    &args->process_apertures[args->num_of_nodes];
   pAperture->gpu_id = pdd->dev->id;
   pAperture->lds_base = pdd->lds_base;
   pAperture->lds_limit = pdd->lds_limit;
   pAperture->gpuvm_base = pdd->gpuvm_base;
   pAperture->gpuvm_limit = pdd->gpuvm_limit;
   pAperture->scratch_base = pdd->scratch_base;
   pAperture->scratch_limit = pdd->scratch_limit;

   dev_dbg(kfd_device,
    "node id %u\n", args->num_of_nodes);
   dev_dbg(kfd_device,
    "gpu id %u\n", pdd->dev->id);
   dev_dbg(kfd_device,
    "lds_base %llX\n", pdd->lds_base);
   dev_dbg(kfd_device,
    "lds_limit %llX\n", pdd->lds_limit);
   dev_dbg(kfd_device,
    "gpuvm_base %llX\n", pdd->gpuvm_base);
   dev_dbg(kfd_device,
    "gpuvm_limit %llX\n", pdd->gpuvm_limit);
   dev_dbg(kfd_device,
    "scratch_base %llX\n", pdd->scratch_base);
   dev_dbg(kfd_device,
    "scratch_limit %llX\n", pdd->scratch_limit);

   args->num_of_nodes++;

   pdd = kfd_get_next_process_device_data(p, pdd);
  } while (pdd && (args->num_of_nodes < NUM_OF_SUPPORTED_GPUS));
 }

 mutex_unlock(&p->mutex);

 return 0;
}
