
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct kgd2kfd_shared_resources {int num_pipe_per_mec; int num_queue_per_pipe; int non_cp_doorbells_end; int non_cp_doorbells_start; int doorbell_start_offset; int doorbell_aperture_size; int doorbell_physical_address; int queue_bitmap; int sdma_doorbell_idx; int drm_render_minor; int gpuvm_size; int compute_vmid_bitmap; } ;
struct TYPE_11__ {scalar_t__ dev; } ;
struct TYPE_20__ {int last_non_cp; int first_non_cp; int sdma_engine; } ;
struct TYPE_18__ {int num_pipe_per_mec; int num_queue_per_pipe; int queue_bitmap; } ;
struct TYPE_15__ {scalar_t__ ready; } ;
struct TYPE_16__ {int queue; int pipe; scalar_t__ me; TYPE_4__ sched; } ;
struct TYPE_17__ {TYPE_5__ ring; } ;
struct TYPE_19__ {TYPE_7__ mec; TYPE_6__ kiq; } ;
struct TYPE_12__ {int max_pfn; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_10__ kfd; TYPE_9__ doorbell_index; TYPE_8__ gfx; TYPE_3__* ddev; TYPE_1__ vm_manager; } ;
struct TYPE_14__ {TYPE_2__* render; } ;
struct TYPE_13__ {int index; } ;


 int AMDGPU_GMC_HOLE_START ;
 int AMDGPU_GPU_PAGE_SHIFT ;
 scalar_t__ CHIP_VEGA10 ;
 int KGD_MAX_QUEUES ;
 int amdgpu_doorbell_get_kfd_info (struct amdgpu_device*,int *,int *,int *) ;
 int amdgpu_gfx_mec_queue_to_bit (struct amdgpu_device*,scalar_t__,int ,int ) ;
 int bitmap_complement (int ,int ,int) ;
 int clear_bit (int,int ) ;
 int compute_vmid_bitmap ;
 int kgd2kfd_device_init (scalar_t__,struct kgd2kfd_shared_resources*) ;
 int min (int,int ) ;

void amdgpu_amdkfd_device_init(struct amdgpu_device *adev)
{
 int i;
 int last_valid_bit;

 if (adev->kfd.dev) {
  struct kgd2kfd_shared_resources gpu_resources = {
   .compute_vmid_bitmap = compute_vmid_bitmap,
   .num_pipe_per_mec = adev->gfx.mec.num_pipe_per_mec,
   .num_queue_per_pipe = adev->gfx.mec.num_queue_per_pipe,
   .gpuvm_size = min(adev->vm_manager.max_pfn
       << AMDGPU_GPU_PAGE_SHIFT,
       AMDGPU_GMC_HOLE_START),
   .drm_render_minor = adev->ddev->render->index,
   .sdma_doorbell_idx = adev->doorbell_index.sdma_engine,

  };




  bitmap_complement(gpu_resources.queue_bitmap,
      adev->gfx.mec.queue_bitmap,
      KGD_MAX_QUEUES);


  if (adev->gfx.kiq.ring.sched.ready)
   clear_bit(amdgpu_gfx_mec_queue_to_bit(adev,
         adev->gfx.kiq.ring.me - 1,
         adev->gfx.kiq.ring.pipe,
         adev->gfx.kiq.ring.queue),
      gpu_resources.queue_bitmap);




  last_valid_bit = 1
    * adev->gfx.mec.num_pipe_per_mec
    * adev->gfx.mec.num_queue_per_pipe;
  for (i = last_valid_bit; i < KGD_MAX_QUEUES; ++i)
   clear_bit(i, gpu_resources.queue_bitmap);

  amdgpu_doorbell_get_kfd_info(adev,
    &gpu_resources.doorbell_physical_address,
    &gpu_resources.doorbell_aperture_size,
    &gpu_resources.doorbell_start_offset);
  if (adev->asic_type >= CHIP_VEGA10) {
   gpu_resources.non_cp_doorbells_start =
     adev->doorbell_index.first_non_cp;
   gpu_resources.non_cp_doorbells_end =
     adev->doorbell_index.last_non_cp;
  }

  kgd2kfd_device_init(adev->kfd.dev, &gpu_resources);
 }
}
