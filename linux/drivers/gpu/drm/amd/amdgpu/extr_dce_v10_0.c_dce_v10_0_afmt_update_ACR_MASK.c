#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_afmt_acr {int /*<<< orphan*/  n_48khz; int /*<<< orphan*/  cts_48khz; int /*<<< orphan*/  n_44_1khz; int /*<<< orphan*/  cts_44_1khz; int /*<<< orphan*/  n_32khz; int /*<<< orphan*/  cts_32khz; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_ACR_32_0 ; 
 int /*<<< orphan*/  HDMI_ACR_32_1 ; 
 int /*<<< orphan*/  HDMI_ACR_44_0 ; 
 int /*<<< orphan*/  HDMI_ACR_44_1 ; 
 int /*<<< orphan*/  HDMI_ACR_48_0 ; 
 int /*<<< orphan*/  HDMI_ACR_48_1 ; 
 int /*<<< orphan*/  HDMI_ACR_CTS_32 ; 
 int /*<<< orphan*/  HDMI_ACR_CTS_44 ; 
 int /*<<< orphan*/  HDMI_ACR_CTS_48 ; 
 int /*<<< orphan*/  HDMI_ACR_N_32 ; 
 int /*<<< orphan*/  HDMI_ACR_N_44 ; 
 int /*<<< orphan*/  HDMI_ACR_N_48 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct amdgpu_afmt_acr FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ mmHDMI_ACR_32_0 ; 
 scalar_t__ mmHDMI_ACR_32_1 ; 
 scalar_t__ mmHDMI_ACR_44_0 ; 
 scalar_t__ mmHDMI_ACR_44_1 ; 
 scalar_t__ mmHDMI_ACR_48_0 ; 
 scalar_t__ mmHDMI_ACR_48_1 ; 
 struct amdgpu_encoder* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder, uint32_t clock)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_afmt_acr acr = FUNC3(clock);
	struct amdgpu_encoder *amdgpu_encoder = FUNC4(encoder);
	struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
	u32 tmp;

	tmp = FUNC1(mmHDMI_ACR_32_0 + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_ACR_32_0, HDMI_ACR_CTS_32, acr.cts_32khz);
	FUNC2(mmHDMI_ACR_32_0 + dig->afmt->offset, tmp);
	tmp = FUNC1(mmHDMI_ACR_32_1 + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_ACR_32_1, HDMI_ACR_N_32, acr.n_32khz);
	FUNC2(mmHDMI_ACR_32_1 + dig->afmt->offset, tmp);

	tmp = FUNC1(mmHDMI_ACR_44_0 + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_ACR_44_0, HDMI_ACR_CTS_44, acr.cts_44_1khz);
	FUNC2(mmHDMI_ACR_44_0 + dig->afmt->offset, tmp);
	tmp = FUNC1(mmHDMI_ACR_44_1 + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_ACR_44_1, HDMI_ACR_N_44, acr.n_44_1khz);
	FUNC2(mmHDMI_ACR_44_1 + dig->afmt->offset, tmp);

	tmp = FUNC1(mmHDMI_ACR_48_0 + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_ACR_48_0, HDMI_ACR_CTS_48, acr.cts_48khz);
	FUNC2(mmHDMI_ACR_48_0 + dig->afmt->offset, tmp);
	tmp = FUNC1(mmHDMI_ACR_48_1 + dig->afmt->offset);
	tmp = FUNC0(tmp, HDMI_ACR_48_1, HDMI_ACR_N_48, acr.n_48khz);
	FUNC2(mmHDMI_ACR_48_1 + dig->afmt->offset, tmp);

}