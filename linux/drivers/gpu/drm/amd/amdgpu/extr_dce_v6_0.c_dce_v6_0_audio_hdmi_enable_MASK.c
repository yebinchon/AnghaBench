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
typedef  int /*<<< orphan*/  u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_AUDIO_PACKET_CONTROL ; 
 int /*<<< orphan*/  AFMT_AUDIO_SAMPLE_SEND ; 
 int /*<<< orphan*/  HDMI_AUDIO_INFO_CONT ; 
 int /*<<< orphan*/  HDMI_AUDIO_INFO_SEND ; 
 int /*<<< orphan*/  HDMI_AVI_INFO_CONT ; 
 int /*<<< orphan*/  HDMI_AVI_INFO_LINE ; 
 int /*<<< orphan*/  HDMI_AVI_INFO_SEND ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_CONTROL0 ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_CONTROL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mmAFMT_AUDIO_PACKET_CONTROL ; 
 scalar_t__ mmHDMI_INFOFRAME_CONTROL0 ; 
 scalar_t__ mmHDMI_INFOFRAME_CONTROL1 ; 
 struct amdgpu_encoder* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *encoder, bool enable)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC3(encoder);
	struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
	u32 tmp;

	if (enable) {
		tmp = FUNC1(mmHDMI_INFOFRAME_CONTROL0 + dig->afmt->offset);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AVI_INFO_SEND, 1);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AVI_INFO_CONT, 1);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AUDIO_INFO_SEND, 1);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AUDIO_INFO_CONT, 1);
		FUNC2(mmHDMI_INFOFRAME_CONTROL0 + dig->afmt->offset, tmp);

		tmp = FUNC1(mmHDMI_INFOFRAME_CONTROL1 + dig->afmt->offset);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL1, HDMI_AVI_INFO_LINE, 2);
		FUNC2(mmHDMI_INFOFRAME_CONTROL1 + dig->afmt->offset, tmp);

		tmp = FUNC1(mmAFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset);
		tmp = FUNC0(tmp, AFMT_AUDIO_PACKET_CONTROL, AFMT_AUDIO_SAMPLE_SEND, 1);
		FUNC2(mmAFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset, tmp);
	} else {
		tmp = FUNC1(mmHDMI_INFOFRAME_CONTROL0 + dig->afmt->offset);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AVI_INFO_SEND, 0);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AVI_INFO_CONT, 0);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AUDIO_INFO_SEND, 0);
		tmp = FUNC0(tmp, HDMI_INFOFRAME_CONTROL0, HDMI_AUDIO_INFO_CONT, 0);
		FUNC2(mmHDMI_INFOFRAME_CONTROL0 + dig->afmt->offset, tmp);

		tmp = FUNC1(mmAFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset);
		tmp = FUNC0(tmp, AFMT_AUDIO_PACKET_CONTROL, AFMT_AUDIO_SAMPLE_SEND, 0);
		FUNC2(mmAFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset, tmp);
	}
}