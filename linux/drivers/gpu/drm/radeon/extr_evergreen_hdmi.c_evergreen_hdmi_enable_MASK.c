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
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {int /*<<< orphan*/  encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int enabled; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 int /*<<< orphan*/  AFMT_AUDIO_SAMPLE_SEND ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int HDMI_AUDIO_INFO_CONT ; 
 int HDMI_AUDIO_INFO_SEND ; 
 int HDMI_AVI_INFO_CONT ; 
 int HDMI_AVI_INFO_SEND ; 
 scalar_t__ HDMI_INFOFRAME_CONTROL0 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 
 struct drm_connector* FUNC6 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC7 (struct drm_encoder*) ; 

void FUNC8(struct drm_encoder *encoder, bool enable)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC7(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

	if (!dig || !dig->afmt)
		return;

	if (enable) {
		struct drm_connector *connector = FUNC6(encoder);

		if (connector && FUNC4(FUNC5(connector))) {
			FUNC1(HDMI_INFOFRAME_CONTROL0 + dig->afmt->offset,
			       HDMI_AVI_INFO_SEND | /* enable AVI info frames */
			       HDMI_AVI_INFO_CONT | /* required for audio info values to be updated */
			       HDMI_AUDIO_INFO_SEND | /* enable audio info frames (frames won't be set until audio is enabled) */
			       HDMI_AUDIO_INFO_CONT); /* required for audio info values to be updated */
			FUNC3(AFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset,
				  AFMT_AUDIO_SAMPLE_SEND);
		} else {
			FUNC1(HDMI_INFOFRAME_CONTROL0 + dig->afmt->offset,
			       HDMI_AVI_INFO_SEND | /* enable AVI info frames */
			       HDMI_AVI_INFO_CONT); /* required for audio info values to be updated */
			FUNC2(AFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset,
				   ~AFMT_AUDIO_SAMPLE_SEND);
		}
	} else {
		FUNC2(AFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset,
			   ~AFMT_AUDIO_SAMPLE_SEND);
		FUNC1(HDMI_INFOFRAME_CONTROL0 + dig->afmt->offset, 0);
	}

	dig->afmt->enabled = enable;

	FUNC0("%sabling HDMI interface @ 0x%04X for encoder 0x%x\n",
		  enable ? "En" : "Dis", dig->afmt->offset, radeon_encoder->encoder_id);
}