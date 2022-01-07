
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v9_mqd_allocation {int dummy; } ;
struct amdgpu_ring {int use_doorbell; int doorbell_index; int name; int * ring_obj; } ;
struct amdgpu_kiq {int irq; int ring; } ;
struct TYPE_9__ {int num_mec; int num_pipe_per_mec; int num_queue_per_pipe; } ;
struct TYPE_7__ {TYPE_1__* funcs; } ;
struct TYPE_10__ {int num_gfx_rings; int ce_ram_size; struct amdgpu_kiq kiq; TYPE_4__ mec; int eop_irq; struct amdgpu_ring* gfx_ring; TYPE_2__ rlc; int gfx_current_status; int cp_ecc_error_irq; int priv_inst_irq; int priv_reg_irq; } ;
struct TYPE_8__ {int gfx_ring0; } ;
struct amdgpu_device {int asic_type; TYPE_5__ gfx; TYPE_3__ doorbell_index; } ;
struct TYPE_6__ {int (* init ) (struct amdgpu_device*) ;} ;


 int AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP ;
 int AMDGPU_GFX_NORMAL_MODE ;






 int DRM_ERROR (char*) ;
 int GFX9_MEC_HPD_SIZE ;
 int GFX_9_0__SRCID__CP_ECC_ERROR ;
 int GFX_9_0__SRCID__CP_EOP_INTERRUPT ;
 int GFX_9_0__SRCID__CP_FUE_ERROR ;
 int GFX_9_0__SRCID__CP_PRIV_INSTR_FAULT ;
 int GFX_9_0__SRCID__CP_PRIV_REG_FAULT ;
 int SOC15_IH_CLIENTID_GRBM_CP ;
 int amdgpu_gfx_is_mec_queue_enabled (struct amdgpu_device*,int,int,int) ;
 int amdgpu_gfx_kiq_init (struct amdgpu_device*,int ) ;
 int amdgpu_gfx_kiq_init_ring (struct amdgpu_device*,int *,int *) ;
 int amdgpu_gfx_mqd_sw_init (struct amdgpu_device*,int) ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,int ,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int gfx_v9_0_compute_ring_init (struct amdgpu_device*,int,int,int,int) ;
 int gfx_v9_0_gpu_early_init (struct amdgpu_device*) ;
 int gfx_v9_0_init_microcode (struct amdgpu_device*) ;
 int gfx_v9_0_mec_init (struct amdgpu_device*) ;
 int gfx_v9_0_ngg_init (struct amdgpu_device*) ;
 int gfx_v9_0_scratch_init (struct amdgpu_device*) ;
 int sprintf (int ,char*,...) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v9_0_sw_init(void *handle)
{
 int i, j, k, r, ring_id;
 struct amdgpu_ring *ring;
 struct amdgpu_kiq *kiq;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 switch (adev->asic_type) {
 case 130:
 case 129:
 case 128:
 case 132:
 case 133:
 case 131:
  adev->gfx.mec.num_mec = 2;
  break;
 default:
  adev->gfx.mec.num_mec = 1;
  break;
 }

 adev->gfx.mec.num_pipe_per_mec = 4;
 adev->gfx.mec.num_queue_per_pipe = 8;


 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_GRBM_CP, GFX_9_0__SRCID__CP_EOP_INTERRUPT, &adev->gfx.eop_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_GRBM_CP, GFX_9_0__SRCID__CP_PRIV_REG_FAULT,
         &adev->gfx.priv_reg_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_GRBM_CP, GFX_9_0__SRCID__CP_PRIV_INSTR_FAULT,
         &adev->gfx.priv_inst_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_GRBM_CP, GFX_9_0__SRCID__CP_ECC_ERROR,
         &adev->gfx.cp_ecc_error_irq);
 if (r)
  return r;


 r = amdgpu_irq_add_id(adev, SOC15_IH_CLIENTID_GRBM_CP, GFX_9_0__SRCID__CP_FUE_ERROR,
         &adev->gfx.cp_ecc_error_irq);
 if (r)
  return r;

 adev->gfx.gfx_current_status = AMDGPU_GFX_NORMAL_MODE;

 gfx_v9_0_scratch_init(adev);

 r = gfx_v9_0_init_microcode(adev);
 if (r) {
  DRM_ERROR("Failed to load gfx firmware!\n");
  return r;
 }

 r = adev->gfx.rlc.funcs->init(adev);
 if (r) {
  DRM_ERROR("Failed to init rlc BOs!\n");
  return r;
 }

 r = gfx_v9_0_mec_init(adev);
 if (r) {
  DRM_ERROR("Failed to init MEC BOs!\n");
  return r;
 }


 for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
  ring = &adev->gfx.gfx_ring[i];
  ring->ring_obj = ((void*)0);
  if (!i)
   sprintf(ring->name, "gfx");
  else
   sprintf(ring->name, "gfx_%d", i);
  ring->use_doorbell = 1;
  ring->doorbell_index = adev->doorbell_index.gfx_ring0 << 1;
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

    r = gfx_v9_0_compute_ring_init(adev,
              ring_id,
              i, k, j);
    if (r)
     return r;

    ring_id++;
   }
  }
 }

 r = amdgpu_gfx_kiq_init(adev, GFX9_MEC_HPD_SIZE);
 if (r) {
  DRM_ERROR("Failed to init KIQ BOs!\n");
  return r;
 }

 kiq = &adev->gfx.kiq;
 r = amdgpu_gfx_kiq_init_ring(adev, &kiq->ring, &kiq->irq);
 if (r)
  return r;


 r = amdgpu_gfx_mqd_sw_init(adev, sizeof(struct v9_mqd_allocation));
 if (r)
  return r;

 adev->gfx.ce_ram_size = 0x8000;

 r = gfx_v9_0_gpu_early_init(adev);
 if (r)
  return r;

 r = gfx_v9_0_ngg_init(adev);
 if (r)
  return r;

 return 0;
}
