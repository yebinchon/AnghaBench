
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amdgpu_iv_entry {int ring_id; int client_id; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_6__ {TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_3__ sdma; } ;
struct TYPE_4__ {int sched; } ;
struct TYPE_5__ {TYPE_1__ ring; } ;


 int DRM_ERROR (char*) ;
 int drm_sched_fault (int *) ;
 int sdma_v4_0_irq_id_to_seq (int ) ;

__attribute__((used)) static int sdma_v4_0_process_illegal_inst_irq(struct amdgpu_device *adev,
           struct amdgpu_irq_src *source,
           struct amdgpu_iv_entry *entry)
{
 int instance;

 DRM_ERROR("Illegal instruction in SDMA command stream\n");

 instance = sdma_v4_0_irq_id_to_seq(entry->client_id);
 if (instance < 0)
  return 0;

 switch (entry->ring_id) {
 case 0:
  drm_sched_fault(&adev->sdma.instance[instance].ring.sched);
  break;
 }
 return 0;
}
