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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_encoder {scalar_t__ crtc; struct drm_device* dev; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {int /*<<< orphan*/  name; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int bpc; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {int offset; int /*<<< orphan*/  pin; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int AFMT_60958_0__AFMT_60958_CS_CHANNEL_NUMBER_L__SHIFT ; 
 int AFMT_60958_1__AFMT_60958_CS_CHANNEL_NUMBER_R__SHIFT ; 
 int AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_2__SHIFT ; 
 int AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_3__SHIFT ; 
 int AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_4__SHIFT ; 
 int AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_5__SHIFT ; 
 int AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_6__SHIFT ; 
 int AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_7__SHIFT ; 
 int AFMT_AUDIO_PACKET_CONTROL2__AFMT_AUDIO_CHANNEL_ENABLE__SHIFT ; 
 int AFMT_AUDIO_PACKET_CONTROL__AFMT_60958_CS_UPDATE_MASK ; 
 int AFMT_AUDIO_PACKET_CONTROL__AFMT_AUDIO_SAMPLE_SEND_MASK ; 
 int AFMT_INFOFRAME_CONTROL0__AFMT_AUDIO_INFO_UPDATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int HDMI_ACR_PACKET_CONTROL__HDMI_ACR_AUTO_SEND_MASK ; 
 int HDMI_ACR_PACKET_CONTROL__HDMI_ACR_SOURCE_MASK ; 
 int HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_DELAY_EN__SHIFT ; 
 int HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_PACKETS_PER_LINE__SHIFT ; 
 int HDMI_AVI_INFOFRAME_SIZE ; 
 int HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH_MASK ; 
 int HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH__SHIFT ; 
 int HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK ; 
 int HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_CONT_MASK ; 
 int HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_SEND_MASK ; 
 int HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_CONT_MASK ; 
 int HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_SEND_MASK ; 
 int HDMI_INFOFRAME_CONTROL1__HDMI_AUDIO_INFO_LINE__SHIFT ; 
 int /*<<< orphan*/  HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE_MASK ; 
 int HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE__SHIFT ; 
 int HDMI_INFOFRAME_HEADER_SIZE ; 
 int HDMI_VBI_PACKET_CONTROL__HDMI_GC_CONT_MASK ; 
 int HDMI_VBI_PACKET_CONTROL__HDMI_GC_SEND_MASK ; 
 int HDMI_VBI_PACKET_CONTROL__HDMI_NULL_SEND_MASK ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct drm_connector* FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_encoder*) ; 
 scalar_t__ FUNC16 (struct hdmi_avi_infoframe*,struct drm_connector*,struct drm_display_mode*) ; 
 scalar_t__ FUNC17 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int mmAFMT_60958_0 ; 
 int mmAFMT_60958_1 ; 
 int mmAFMT_60958_2 ; 
 int mmAFMT_AUDIO_CRC_CONTROL ; 
 int mmAFMT_AUDIO_PACKET_CONTROL ; 
 int mmAFMT_AUDIO_PACKET_CONTROL2 ; 
 int mmAFMT_INFOFRAME_CONTROL0 ; 
 int mmAFMT_RAMP_CONTROL0 ; 
 int mmAFMT_RAMP_CONTROL1 ; 
 int mmAFMT_RAMP_CONTROL2 ; 
 int mmAFMT_RAMP_CONTROL3 ; 
 int mmHDMI_ACR_PACKET_CONTROL ; 
 int mmHDMI_AUDIO_PACKET_CONTROL ; 
 int mmHDMI_CONTROL ; 
 int mmHDMI_GC ; 
 int mmHDMI_INFOFRAME_CONTROL0 ; 
 int mmHDMI_INFOFRAME_CONTROL1 ; 
 int mmHDMI_VBI_PACKET_CONTROL ; 
 struct amdgpu_crtc* FUNC18 (scalar_t__) ; 
 struct amdgpu_encoder* FUNC19 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC20(struct drm_encoder *encoder,
				  struct drm_display_mode *mode)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC19(encoder);
	struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
	struct drm_connector *connector = FUNC6(encoder);
	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
	struct hdmi_avi_infoframe frame;
	uint32_t offset, val;
	ssize_t err;
	int bpc = 8;

	if (!dig || !dig->afmt)
		return;

	/* Silent, r600_hdmi_enable will raise WARN for us */
	if (!dig->afmt->enabled)
		return;

	offset = dig->afmt->offset;

	/* hdmi deep color mode general control packets setup, if bpc > 8 */
	if (encoder->crtc) {
		struct amdgpu_crtc *amdgpu_crtc = FUNC18(encoder->crtc);
		bpc = amdgpu_crtc->bpc;
	}

	/* disable audio prior to setting up hw */
	dig->afmt->pin = FUNC11(adev);
	FUNC10(adev, dig->afmt->pin, false);

	FUNC12(encoder, mode->clock);

	FUNC3(mmHDMI_VBI_PACKET_CONTROL + offset,
	       HDMI_VBI_PACKET_CONTROL__HDMI_NULL_SEND_MASK); /* send null packets when required */

	FUNC3(mmAFMT_AUDIO_CRC_CONTROL + offset, 0x1000);

	val = FUNC2(mmHDMI_CONTROL + offset);
	val &= ~HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK;
	val &= ~HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH_MASK;

	switch (bpc) {
	case 0:
	case 6:
	case 8:
	case 16:
	default:
		FUNC0("%s: Disabling hdmi deep color for %d bpc.\n",
			  connector->name, bpc);
		break;
	case 10:
		val |= HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK;
		val |= 1 << HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH__SHIFT;
		FUNC0("%s: Enabling hdmi deep color 30 for 10 bpc.\n",
			  connector->name);
		break;
	case 12:
		val |= HDMI_CONTROL__HDMI_DEEP_COLOR_ENABLE_MASK;
		val |= 2 << HDMI_CONTROL__HDMI_DEEP_COLOR_DEPTH__SHIFT;
		FUNC0("%s: Enabling hdmi deep color 36 for 12 bpc.\n",
			  connector->name);
		break;
	}

	FUNC3(mmHDMI_CONTROL + offset, val);

	FUNC3(mmHDMI_VBI_PACKET_CONTROL + offset,
	       HDMI_VBI_PACKET_CONTROL__HDMI_NULL_SEND_MASK | /* send null packets when required */
	       HDMI_VBI_PACKET_CONTROL__HDMI_GC_SEND_MASK | /* send general control packets */
	       HDMI_VBI_PACKET_CONTROL__HDMI_GC_CONT_MASK); /* send general control packets every frame */

	FUNC3(mmHDMI_INFOFRAME_CONTROL0 + offset,
	       HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_SEND_MASK | /* enable audio info frames (frames won't be set until audio is enabled) */
	       HDMI_INFOFRAME_CONTROL0__HDMI_AUDIO_INFO_CONT_MASK); /* required for audio info values to be updated */

	FUNC3(mmAFMT_INFOFRAME_CONTROL0 + offset,
	       AFMT_INFOFRAME_CONTROL0__AFMT_AUDIO_INFO_UPDATE_MASK); /* required for audio info values to be updated */

	FUNC3(mmHDMI_INFOFRAME_CONTROL1 + offset,
	       (2 << HDMI_INFOFRAME_CONTROL1__HDMI_AUDIO_INFO_LINE__SHIFT)); /* anything other than 0 */

	FUNC3(mmHDMI_GC + offset, 0); /* unset HDMI_GC_AVMUTE */

	FUNC3(mmHDMI_AUDIO_PACKET_CONTROL + offset,
	       (1 << HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_DELAY_EN__SHIFT) | /* set the default audio delay */
	       (3 << HDMI_AUDIO_PACKET_CONTROL__HDMI_AUDIO_PACKETS_PER_LINE__SHIFT)); /* should be suffient for all audio modes and small enough for all hblanks */

	FUNC3(mmAFMT_AUDIO_PACKET_CONTROL + offset,
	       AFMT_AUDIO_PACKET_CONTROL__AFMT_60958_CS_UPDATE_MASK); /* allow 60958 channel status fields to be updated */

	/* fglrx clears sth in AFMT_AUDIO_PACKET_CONTROL2 here */

	if (bpc > 8)
		FUNC3(mmHDMI_ACR_PACKET_CONTROL + offset,
		       HDMI_ACR_PACKET_CONTROL__HDMI_ACR_AUTO_SEND_MASK); /* allow hw to sent ACR packets when required */
	else
		FUNC3(mmHDMI_ACR_PACKET_CONTROL + offset,
		       HDMI_ACR_PACKET_CONTROL__HDMI_ACR_SOURCE_MASK | /* select SW CTS value */
		       HDMI_ACR_PACKET_CONTROL__HDMI_ACR_AUTO_SEND_MASK); /* allow hw to sent ACR packets when required */

	FUNC8(encoder, mode->clock);

	FUNC3(mmAFMT_60958_0 + offset,
	       (1 << AFMT_60958_0__AFMT_60958_CS_CHANNEL_NUMBER_L__SHIFT));

	FUNC3(mmAFMT_60958_1 + offset,
	       (2 << AFMT_60958_1__AFMT_60958_CS_CHANNEL_NUMBER_R__SHIFT));

	FUNC3(mmAFMT_60958_2 + offset,
	       (3 << AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_2__SHIFT) |
	       (4 << AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_3__SHIFT) |
	       (5 << AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_4__SHIFT) |
	       (6 << AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_5__SHIFT) |
	       (7 << AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_6__SHIFT) |
	       (8 << AFMT_60958_2__AFMT_60958_CS_CHANNEL_NUMBER_7__SHIFT));

	FUNC15(encoder);


	FUNC3(mmAFMT_AUDIO_PACKET_CONTROL2 + offset,
	       (0xff << AFMT_AUDIO_PACKET_CONTROL2__AFMT_AUDIO_CHANNEL_ENABLE__SHIFT));

	FUNC7(encoder);
	FUNC14(encoder);
	FUNC13(encoder, mode);

	err = FUNC16(&frame, connector, mode);
	if (err < 0) {
		FUNC1("failed to setup AVI infoframe: %zd\n", err);
		return;
	}

	err = FUNC17(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC1("failed to pack AVI infoframe: %zd\n", err);
		return;
	}

	FUNC9(encoder, buffer, sizeof(buffer));

	FUNC4(mmHDMI_INFOFRAME_CONTROL0 + offset,
		  HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_SEND_MASK | /* enable AVI info frames */
		  HDMI_INFOFRAME_CONTROL0__HDMI_AVI_INFO_CONT_MASK); /* required for audio info values to be updated */

	FUNC5(mmHDMI_INFOFRAME_CONTROL1 + offset,
		 (2 << HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE__SHIFT), /* anything other than 0 */
		 ~HDMI_INFOFRAME_CONTROL1__HDMI_AVI_INFO_LINE_MASK);

	FUNC4(mmAFMT_AUDIO_PACKET_CONTROL + offset,
		  AFMT_AUDIO_PACKET_CONTROL__AFMT_AUDIO_SAMPLE_SEND_MASK); /* send audio packets */

	FUNC3(mmAFMT_RAMP_CONTROL0 + offset, 0x00FFFFFF);
	FUNC3(mmAFMT_RAMP_CONTROL1 + offset, 0x007FFFFF);
	FUNC3(mmAFMT_RAMP_CONTROL2 + offset, 0x00000001);
	FUNC3(mmAFMT_RAMP_CONTROL3 + offset, 0x00000001);

	/* enable audio after setting up hw */
	FUNC10(adev, dig->afmt->pin, true);
}