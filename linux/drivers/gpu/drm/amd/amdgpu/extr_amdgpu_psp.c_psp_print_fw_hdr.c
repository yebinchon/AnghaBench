
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct smc_firmware_header_v1_0 {int header; } ;
struct sdma_firmware_header_v1_0 {int header; } ;
struct rlc_firmware_header_v2_0 {int header; } ;
struct psp_context {struct amdgpu_device* adev; } ;
struct gfx_firmware_header_v1_0 {int header; } ;
struct amdgpu_firmware_info {size_t ucode_id; } ;
struct TYPE_13__ {TYPE_10__* fw; } ;
struct TYPE_22__ {TYPE_8__* rlc_fw; TYPE_7__* mec_fw; TYPE_6__* me_fw; TYPE_5__* pfp_fw; TYPE_4__* ce_fw; } ;
struct TYPE_16__ {TYPE_2__* instance; } ;
struct amdgpu_device {TYPE_11__ pm; TYPE_9__ gfx; TYPE_3__ sdma; } ;
struct TYPE_21__ {scalar_t__ data; } ;
struct TYPE_20__ {scalar_t__ data; } ;
struct TYPE_19__ {scalar_t__ data; } ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_17__ {scalar_t__ data; } ;
struct TYPE_15__ {TYPE_1__* fw; } ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_12__ {scalar_t__ data; } ;
 int amdgpu_ucode_print_gfx_hdr (int *) ;
 int amdgpu_ucode_print_rlc_hdr (int *) ;
 int amdgpu_ucode_print_sdma_hdr (int *) ;
 int amdgpu_ucode_print_smc_hdr (int *) ;

__attribute__((used)) static void psp_print_fw_hdr(struct psp_context *psp,
        struct amdgpu_firmware_info *ucode)
{
 struct amdgpu_device *adev = psp->adev;
 const struct sdma_firmware_header_v1_0 *sdma_hdr =
  (const struct sdma_firmware_header_v1_0 *)
  adev->sdma.instance[ucode->ucode_id - 136].fw->data;
 const struct gfx_firmware_header_v1_0 *ce_hdr =
  (const struct gfx_firmware_header_v1_0 *)adev->gfx.ce_fw->data;
 const struct gfx_firmware_header_v1_0 *pfp_hdr =
  (const struct gfx_firmware_header_v1_0 *)adev->gfx.pfp_fw->data;
 const struct gfx_firmware_header_v1_0 *me_hdr =
  (const struct gfx_firmware_header_v1_0 *)adev->gfx.me_fw->data;
 const struct gfx_firmware_header_v1_0 *mec_hdr =
  (const struct gfx_firmware_header_v1_0 *)adev->gfx.mec_fw->data;
 const struct rlc_firmware_header_v2_0 *rlc_hdr =
  (const struct rlc_firmware_header_v2_0 *)adev->gfx.rlc_fw->data;
 const struct smc_firmware_header_v1_0 *smc_hdr =
  (const struct smc_firmware_header_v1_0 *)adev->pm.fw->data;

 switch (ucode->ucode_id) {
 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  amdgpu_ucode_print_sdma_hdr(&sdma_hdr->header);
  break;
 case 141:
  amdgpu_ucode_print_gfx_hdr(&ce_hdr->header);
  break;
 case 138:
  amdgpu_ucode_print_gfx_hdr(&pfp_hdr->header);
  break;
 case 140:
  amdgpu_ucode_print_gfx_hdr(&me_hdr->header);
  break;
 case 139:
  amdgpu_ucode_print_gfx_hdr(&mec_hdr->header);
  break;
 case 137:
  amdgpu_ucode_print_rlc_hdr(&rlc_hdr->header);
  break;
 case 128:
  amdgpu_ucode_print_smc_hdr(&smc_hdr->header);
  break;
 default:
  break;
 }
}
