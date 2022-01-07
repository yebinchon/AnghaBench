
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_10__ {int ucode_size_bytes; int ucode_array_offset_bytes; } ;
struct gfx_firmware_header_v1_0 {TYPE_5__ header; } ;
struct TYPE_8__ {int ce_fw_gpu_addr; int ce_fw_obj; int ce_fw_ptr; } ;
struct TYPE_9__ {TYPE_3__ ce; TYPE_1__* ce_fw; } ;
struct amdgpu_device {TYPE_4__ gfx; TYPE_2__* nbio_funcs; int dev; } ;
typedef int __le32 ;
struct TYPE_7__ {int (* hdp_flush ) (struct amdgpu_device*,int *) ;} ;
struct TYPE_6__ {scalar_t__ data; } ;


 int ADDRESS_CLAMP ;
 int AMDGPU_GEM_DOMAIN_GTT ;
 int CACHE_POLICY ;
 int CP_CE_IC_BASE_CNTL ;
 int CP_CE_IC_OP_CNTL ;
 int EINVAL ;
 int EXE_DISABLE ;
 int GC ;
 int INVALIDATE_CACHE ;
 int INVALIDATE_CACHE_COMPLETE ;
 int PAGE_SIZE ;
 int REG_GET_FIELD (unsigned int,int ,int ) ;
 unsigned int REG_SET_FIELD (unsigned int,int ,int ,int) ;
 unsigned int RREG32_SOC15 (int ,int ,int ) ;
 int VMID ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,int ,int ,int ,int *,int*,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 int amdgpu_emu_mode ;
 int amdgpu_ucode_print_gfx_hdr (TYPE_5__*) ;
 int dev_err (int ,char*,...) ;
 int gfx_v10_0_ce_fini (struct amdgpu_device*) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy (int ,int const*,unsigned int) ;
 int mmCP_CE_IC_BASE_CNTL ;
 int mmCP_CE_IC_BASE_HI ;
 int mmCP_CE_IC_BASE_LO ;
 int mmCP_CE_IC_OP_CNTL ;
 int stub1 (struct amdgpu_device*,int *) ;
 int udelay (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int gfx_v10_0_cp_gfx_load_ce_microcode(struct amdgpu_device *adev)
{
 int r;
 const struct gfx_firmware_header_v1_0 *ce_hdr;
 const __le32 *fw_data;
 unsigned i, fw_size;
 uint32_t tmp;
 uint32_t usec_timeout = 50000;

 ce_hdr = (const struct gfx_firmware_header_v1_0 *)
  adev->gfx.ce_fw->data;

 amdgpu_ucode_print_gfx_hdr(&ce_hdr->header);

 fw_data = (const __le32 *)(adev->gfx.ce_fw->data +
  le32_to_cpu(ce_hdr->header.ucode_array_offset_bytes));
 fw_size = le32_to_cpu(ce_hdr->header.ucode_size_bytes);

 r = amdgpu_bo_create_reserved(adev, ce_hdr->header.ucode_size_bytes,
          PAGE_SIZE, AMDGPU_GEM_DOMAIN_GTT,
          &adev->gfx.ce.ce_fw_obj,
          &adev->gfx.ce.ce_fw_gpu_addr,
          (void **)&adev->gfx.ce.ce_fw_ptr);
 if (r) {
  dev_err(adev->dev, "(%d) failed to create ce fw bo\n", r);
  gfx_v10_0_ce_fini(adev);
  return r;
 }

 memcpy(adev->gfx.ce.ce_fw_ptr, fw_data, fw_size);

 amdgpu_bo_kunmap(adev->gfx.ce.ce_fw_obj);
 amdgpu_bo_unreserve(adev->gfx.ce.ce_fw_obj);


 tmp = RREG32_SOC15(GC, 0, mmCP_CE_IC_OP_CNTL);
 tmp = REG_SET_FIELD(tmp, CP_CE_IC_OP_CNTL, INVALIDATE_CACHE, 1);
 WREG32_SOC15(GC, 0, mmCP_CE_IC_OP_CNTL, tmp);


 for (i = 0; i < usec_timeout; i++) {
  tmp = RREG32_SOC15(GC, 0, mmCP_CE_IC_OP_CNTL);
  if (1 == REG_GET_FIELD(tmp, CP_CE_IC_OP_CNTL,
   INVALIDATE_CACHE_COMPLETE))
   break;
  udelay(1);
 }

 if (i >= usec_timeout) {
  dev_err(adev->dev, "failed to invalidate instruction cache\n");
  return -EINVAL;
 }

 if (amdgpu_emu_mode == 1)
  adev->nbio_funcs->hdp_flush(adev, ((void*)0));

 tmp = RREG32_SOC15(GC, 0, mmCP_CE_IC_BASE_CNTL);
 tmp = REG_SET_FIELD(tmp, CP_CE_IC_BASE_CNTL, VMID, 0);
 tmp = REG_SET_FIELD(tmp, CP_CE_IC_BASE_CNTL, CACHE_POLICY, 0);
 tmp = REG_SET_FIELD(tmp, CP_CE_IC_BASE_CNTL, EXE_DISABLE, 0);
 tmp = REG_SET_FIELD(tmp, CP_CE_IC_BASE_CNTL, ADDRESS_CLAMP, 1);
 WREG32_SOC15(GC, 0, mmCP_CE_IC_BASE_LO,
  adev->gfx.ce.ce_fw_gpu_addr & 0xFFFFF000);
 WREG32_SOC15(GC, 0, mmCP_CE_IC_BASE_HI,
  upper_32_bits(adev->gfx.ce.ce_fw_gpu_addr));

 return 0;
}
