
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct common_firmware_header {int ucode_size_bytes; } ;
struct amdgpu_ring {int use_doorbell; int doorbell_index; int name; } ;
struct TYPE_10__ {int jpeg_pitch; int nop; int cmd; int data1; int data0; int scratch9; int gp_scratch8; int ib_size; int ib_bar_high; int ib_bar_low; int ib_vmid; int context_id; } ;
struct TYPE_18__ {int num_vcn_inst; int harvest_config; int num_enc_rings; TYPE_5__* inst; TYPE_1__ internal; TYPE_7__* fw; } ;
struct TYPE_12__ {int vcn_ring0_1; } ;
struct TYPE_13__ {TYPE_3__ vcn; } ;
struct TYPE_17__ {scalar_t__ load_type; int fw_size; TYPE_6__* ucode; } ;
struct amdgpu_device {TYPE_9__ vcn; TYPE_4__ doorbell_index; TYPE_8__ firmware; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {size_t ucode_id; TYPE_7__* fw; } ;
struct TYPE_11__ {void* jpeg_pitch; void* nop; void* cmd; void* data1; void* data0; void* scratch9; } ;
struct TYPE_14__ {int irq; struct amdgpu_ring ring_jpeg; struct amdgpu_ring* ring_enc; struct amdgpu_ring ring_dec; TYPE_2__ external; } ;


 scalar_t__ ALIGN (int ,int ) ;
 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 size_t AMDGPU_UCODE_ID_VCN ;
 size_t AMDGPU_UCODE_ID_VCN1 ;
 int DRM_INFO (char*) ;
 int PAGE_SIZE ;
 void* SOC15_REG_OFFSET (int ,int,int ) ;
 int UVD ;
 int VCN25_MAX_HW_INSTANCES_ARCTURUS ;
 scalar_t__ VCN_2_0__SRCID__JPEG_DECODE ;
 scalar_t__ VCN_2_0__SRCID__UVD_ENC_GENERAL_PURPOSE ;
 scalar_t__ VCN_2_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT ;
 int * amdgpu_ih_clientid_vcns ;
 int amdgpu_irq_add_id (struct amdgpu_device*,int ,scalar_t__,int *) ;
 int amdgpu_ring_init (struct amdgpu_device*,struct amdgpu_ring*,int,int *,int ) ;
 int amdgpu_vcn_resume (struct amdgpu_device*) ;
 int amdgpu_vcn_sw_init (struct amdgpu_device*) ;
 int le32_to_cpu (int ) ;
 int mmUVD_CONTEXT_ID_INTERNAL_OFFSET ;
 int mmUVD_GPCOM_VCPU_CMD ;
 int mmUVD_GPCOM_VCPU_CMD_INTERNAL_OFFSET ;
 int mmUVD_GPCOM_VCPU_DATA0 ;
 int mmUVD_GPCOM_VCPU_DATA0_INTERNAL_OFFSET ;
 int mmUVD_GPCOM_VCPU_DATA1 ;
 int mmUVD_GPCOM_VCPU_DATA1_INTERNAL_OFFSET ;
 int mmUVD_GP_SCRATCH8_INTERNAL_OFFSET ;
 int mmUVD_JPEG_PITCH ;
 int mmUVD_JPEG_PITCH_INTERNAL_OFFSET ;
 int mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET ;
 int mmUVD_LMI_RBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET ;
 int mmUVD_LMI_RBC_IB_VMID_INTERNAL_OFFSET ;
 int mmUVD_NO_OP ;
 int mmUVD_NO_OP_INTERNAL_OFFSET ;
 int mmUVD_RBC_IB_SIZE_INTERNAL_OFFSET ;
 int mmUVD_SCRATCH9 ;
 int mmUVD_SCRATCH9_INTERNAL_OFFSET ;
 int sprintf (int ,char*,int,...) ;

__attribute__((used)) static int vcn_v2_5_sw_init(void *handle)
{
 struct amdgpu_ring *ring;
 int i, j, r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 for (j = 0; j < adev->vcn.num_vcn_inst; j++) {
  if (adev->vcn.harvest_config & (1 << j))
   continue;

  r = amdgpu_irq_add_id(adev, amdgpu_ih_clientid_vcns[j],
    VCN_2_0__SRCID__UVD_SYSTEM_MESSAGE_INTERRUPT, &adev->vcn.inst[j].irq);
  if (r)
   return r;


  for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
   r = amdgpu_irq_add_id(adev, amdgpu_ih_clientid_vcns[j],
    i + VCN_2_0__SRCID__UVD_ENC_GENERAL_PURPOSE, &adev->vcn.inst[j].irq);
   if (r)
    return r;
  }


  r = amdgpu_irq_add_id(adev, amdgpu_ih_clientid_vcns[j],
    VCN_2_0__SRCID__JPEG_DECODE, &adev->vcn.inst[j].irq);
  if (r)
   return r;
 }

 r = amdgpu_vcn_sw_init(adev);
 if (r)
  return r;

 if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP) {
  const struct common_firmware_header *hdr;
  hdr = (const struct common_firmware_header *)adev->vcn.fw->data;
  adev->firmware.ucode[AMDGPU_UCODE_ID_VCN].ucode_id = AMDGPU_UCODE_ID_VCN;
  adev->firmware.ucode[AMDGPU_UCODE_ID_VCN].fw = adev->vcn.fw;
  adev->firmware.fw_size +=
   ALIGN(le32_to_cpu(hdr->ucode_size_bytes), PAGE_SIZE);

  if (adev->vcn.num_vcn_inst == VCN25_MAX_HW_INSTANCES_ARCTURUS) {
   adev->firmware.ucode[AMDGPU_UCODE_ID_VCN1].ucode_id = AMDGPU_UCODE_ID_VCN1;
   adev->firmware.ucode[AMDGPU_UCODE_ID_VCN1].fw = adev->vcn.fw;
   adev->firmware.fw_size +=
    ALIGN(le32_to_cpu(hdr->ucode_size_bytes), PAGE_SIZE);
  }
  DRM_INFO("PSP loading VCN firmware\n");
 }

 r = amdgpu_vcn_resume(adev);
 if (r)
  return r;

 for (j = 0; j < adev->vcn.num_vcn_inst; j++) {
  if (adev->vcn.harvest_config & (1 << j))
   continue;
  adev->vcn.internal.context_id = mmUVD_CONTEXT_ID_INTERNAL_OFFSET;
  adev->vcn.internal.ib_vmid = mmUVD_LMI_RBC_IB_VMID_INTERNAL_OFFSET;
  adev->vcn.internal.ib_bar_low = mmUVD_LMI_RBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET;
  adev->vcn.internal.ib_bar_high = mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET;
  adev->vcn.internal.ib_size = mmUVD_RBC_IB_SIZE_INTERNAL_OFFSET;
  adev->vcn.internal.gp_scratch8 = mmUVD_GP_SCRATCH8_INTERNAL_OFFSET;

  adev->vcn.internal.scratch9 = mmUVD_SCRATCH9_INTERNAL_OFFSET;
  adev->vcn.inst[j].external.scratch9 = SOC15_REG_OFFSET(UVD, j, mmUVD_SCRATCH9);
  adev->vcn.internal.data0 = mmUVD_GPCOM_VCPU_DATA0_INTERNAL_OFFSET;
  adev->vcn.inst[j].external.data0 = SOC15_REG_OFFSET(UVD, j, mmUVD_GPCOM_VCPU_DATA0);
  adev->vcn.internal.data1 = mmUVD_GPCOM_VCPU_DATA1_INTERNAL_OFFSET;
  adev->vcn.inst[j].external.data1 = SOC15_REG_OFFSET(UVD, j, mmUVD_GPCOM_VCPU_DATA1);
  adev->vcn.internal.cmd = mmUVD_GPCOM_VCPU_CMD_INTERNAL_OFFSET;
  adev->vcn.inst[j].external.cmd = SOC15_REG_OFFSET(UVD, j, mmUVD_GPCOM_VCPU_CMD);
  adev->vcn.internal.nop = mmUVD_NO_OP_INTERNAL_OFFSET;
  adev->vcn.inst[j].external.nop = SOC15_REG_OFFSET(UVD, j, mmUVD_NO_OP);

  adev->vcn.internal.jpeg_pitch = mmUVD_JPEG_PITCH_INTERNAL_OFFSET;
  adev->vcn.inst[j].external.jpeg_pitch = SOC15_REG_OFFSET(UVD, j, mmUVD_JPEG_PITCH);

  ring = &adev->vcn.inst[j].ring_dec;
  ring->use_doorbell = 1;
  ring->doorbell_index = (adev->doorbell_index.vcn.vcn_ring0_1 << 1) + 8*j;
  sprintf(ring->name, "vcn_dec_%d", j);
  r = amdgpu_ring_init(adev, ring, 512, &adev->vcn.inst[j].irq, 0);
  if (r)
   return r;

  for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
   ring = &adev->vcn.inst[j].ring_enc[i];
   ring->use_doorbell = 1;
   ring->doorbell_index = (adev->doorbell_index.vcn.vcn_ring0_1 << 1) + 2 + i + 8*j;
   sprintf(ring->name, "vcn_enc_%d.%d", j, i);
   r = amdgpu_ring_init(adev, ring, 512, &adev->vcn.inst[j].irq, 0);
   if (r)
    return r;
  }

  ring = &adev->vcn.inst[j].ring_jpeg;
  ring->use_doorbell = 1;
  ring->doorbell_index = (adev->doorbell_index.vcn.vcn_ring0_1 << 1) + 1 + 8*j;
  sprintf(ring->name, "vcn_jpeg_%d", j);
  r = amdgpu_ring_init(adev, ring, 512, &adev->vcn.inst[j].irq, 0);
  if (r)
   return r;
 }

 return 0;
}
