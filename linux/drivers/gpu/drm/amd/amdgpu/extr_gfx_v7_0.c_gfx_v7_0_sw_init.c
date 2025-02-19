
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_ring {int name; int * ring_obj; } ;
struct TYPE_7__ {int num_mec; int num_pipe_per_mec; int num_queue_per_pipe; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_8__ {int num_gfx_rings; int ce_ram_size; TYPE_3__ mec; int eop_irq; struct amdgpu_ring* gfx_ring; TYPE_2__ rlc; int priv_inst_irq; int priv_reg_irq; } ;
struct amdgpu_device {int asic_type; TYPE_4__ gfx; } ;
struct TYPE_5__ {int (* init ) (struct amdgpu_device*) ;} ;


 int AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP ;
 int AMDGPU_IRQ_CLIENTID_LEGACY ;





 int DRM_ERROR (char*) ;
 int amdgpu_gfx_is_mec_queue_enabled (struct amdgpu_device*,int,int,int) ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int gfx_v7_0_compute_ring_init (struct amdgpu_device*,int,int,int,int) ;
 int gfx_v7_0_gpu_early_init (struct amdgpu_device*) ;
 int gfx_v7_0_init_microcode (struct amdgpu_device*) ;
 int gfx_v7_0_mec_init (struct amdgpu_device*) ;
 int gfx_v7_0_scratch_init (struct amdgpu_device*) ;
 int sprintf (int ,char*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v7_0_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int i, j, k, r, ring_id;

 switch (adev->asic_type) {
 case 129:
  adev->gfx.mec.num_mec = 2;
  break;
 case 132:
 case 131:
 case 130:
 case 128:
 default:
  adev->gfx.mec.num_mec = 1;
  break;
 }
 adev->gfx.mec.num_pipe_per_mec = 4;
 adev->gfx.mec.num_queue_per_pipe = 8;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 181, &adev->gfx.eop_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 184,
         &adev->gfx.priv_reg_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, AMDGPU_IRQ_CLIENTID_LEGACY, 185,
         &adev->gfx.priv_inst_irq);
 if (r)
  return r;

 gfx_v7_0_scratch_init(adev);

 r = gfx_v7_0_init_microcode(adev);
 if (r) {
  DRM_ERROR("Failed to load gfx firmware!\n");
  return r;
 }

 r = adev->gfx.rlc.funcs->init(adev);
 if (r) {
  DRM_ERROR("Failed to init rlc BOs!\n");
  return r;
 }


 r = gfx_v7_0_mec_init(adev);
 if (r) {
  DRM_ERROR("Failed to init MEC BOs!\n");
  return r;
 }

 for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
  ring = &adev->gfx.gfx_ring[i];
  ring->ring_obj = ((void*)0);
  sprintf(ring->name, "gfx");
  r = amdgpu_ring_init(adev, ring, 1024,
         &adev->gfx.eop_irq, AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP);
  if (r)
   return r;
 }


 ring_id = 0;
 for (i = 0; i < adev->gfx.mec.num_mec; ++i) {
  for (j = 0; j < adev->gfx.mec.num_queue_per_pipe; j++) {
   for (k = 0; k < adev->gfx.mec.num_pipe_per_mec; k++) {
    if (!amdgpu_gfx_is_mec_queue_enabled(adev, i, k, j))
     continue;

    r = gfx_v7_0_compute_ring_init(adev,
        ring_id,
        i, k, j);
    if (r)
     return r;

    ring_id++;
   }
  }
 }

 adev->gfx.ce_ram_size = 0x8000;

 gfx_v7_0_gpu_early_init(adev);

 return r;
}
