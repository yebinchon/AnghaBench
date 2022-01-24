#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int AFMT_60958_CS_UPDATE ; 
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 int AFMT_AUDIO_SAMPLE_SEND ; 
 int FUNC0 (int) ; 
 int HDMI0_AUDIO_INFO_CONT ; 
 int FUNC1 (int) ; 
 int HDMI0_AUDIO_INFO_SEND ; 
 int FUNC2 (int) ; 
 scalar_t__ HDMI0_AUDIO_PACKET_CONTROL ; 
 scalar_t__ HDMI0_INFOFRAME_CONTROL0 ; 
 scalar_t__ HDMI0_INFOFRAME_CONTROL1 ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

void FUNC5(struct drm_encoder *encoder, u32 offset)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;

	FUNC3(HDMI0_AUDIO_PACKET_CONTROL + offset,
		FUNC0(1) |			/* default audio delay */
		FUNC2(3));	/* should be suffient for all audio modes and small enough for all hblanks */

	FUNC3(AFMT_AUDIO_PACKET_CONTROL + offset,
		AFMT_AUDIO_SAMPLE_SEND |			/* send audio packets */
		AFMT_60958_CS_UPDATE);				/* allow 60958 channel status fields to be updated */

	FUNC4(HDMI0_INFOFRAME_CONTROL0 + offset,
		HDMI0_AUDIO_INFO_SEND |				/* enable audio info frames (frames won't be set until audio is enabled) */
		HDMI0_AUDIO_INFO_CONT);				/* send audio info frames every frame/field */

	FUNC4(HDMI0_INFOFRAME_CONTROL1 + offset,
		FUNC1(2));			/* anything other than 0 */
}