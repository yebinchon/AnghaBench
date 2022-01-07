
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_afmt_acr {int n_48khz; int cts_48khz; int n_44_1khz; int cts_44_1khz; int n_32khz; int cts_32khz; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 int HDMI_ACR_32_0 ;
 int HDMI_ACR_32_1 ;
 int HDMI_ACR_44_0 ;
 int HDMI_ACR_44_1 ;
 int HDMI_ACR_48_0 ;
 int HDMI_ACR_48_1 ;
 int HDMI_ACR_CTS_32 ;
 int HDMI_ACR_CTS_44 ;
 int HDMI_ACR_CTS_48 ;
 int HDMI_ACR_N_32 ;
 int HDMI_ACR_N_44 ;
 int HDMI_ACR_N_48 ;
 int REG_SET_FIELD (int ,int ,int ,int ) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 struct amdgpu_afmt_acr amdgpu_afmt_acr (int ) ;
 scalar_t__ mmHDMI_ACR_32_0 ;
 scalar_t__ mmHDMI_ACR_32_1 ;
 scalar_t__ mmHDMI_ACR_44_0 ;
 scalar_t__ mmHDMI_ACR_44_1 ;
 scalar_t__ mmHDMI_ACR_48_0 ;
 scalar_t__ mmHDMI_ACR_48_1 ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v10_0_afmt_update_ACR(struct drm_encoder *encoder, uint32_t clock)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_afmt_acr acr = amdgpu_afmt_acr(clock);
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
 u32 tmp;

 tmp = RREG32(mmHDMI_ACR_32_0 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_ACR_32_0, HDMI_ACR_CTS_32, acr.cts_32khz);
 WREG32(mmHDMI_ACR_32_0 + dig->afmt->offset, tmp);
 tmp = RREG32(mmHDMI_ACR_32_1 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_ACR_32_1, HDMI_ACR_N_32, acr.n_32khz);
 WREG32(mmHDMI_ACR_32_1 + dig->afmt->offset, tmp);

 tmp = RREG32(mmHDMI_ACR_44_0 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_ACR_44_0, HDMI_ACR_CTS_44, acr.cts_44_1khz);
 WREG32(mmHDMI_ACR_44_0 + dig->afmt->offset, tmp);
 tmp = RREG32(mmHDMI_ACR_44_1 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_ACR_44_1, HDMI_ACR_N_44, acr.n_44_1khz);
 WREG32(mmHDMI_ACR_44_1 + dig->afmt->offset, tmp);

 tmp = RREG32(mmHDMI_ACR_48_0 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_ACR_48_0, HDMI_ACR_CTS_48, acr.cts_48khz);
 WREG32(mmHDMI_ACR_48_0 + dig->afmt->offset, tmp);
 tmp = RREG32(mmHDMI_ACR_48_1 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_ACR_48_1, HDMI_ACR_N_48, acr.n_48khz);
 WREG32(mmHDMI_ACR_48_1 + dig->afmt->offset, tmp);

}
