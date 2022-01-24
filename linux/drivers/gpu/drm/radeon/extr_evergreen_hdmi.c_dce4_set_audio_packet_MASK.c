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
 scalar_t__ AFMT_60958_0 ; 
 scalar_t__ AFMT_60958_1 ; 
 scalar_t__ AFMT_60958_2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int AFMT_60958_CS_UPDATE ; 
 int FUNC8 (int) ; 
 int AFMT_AUDIO_INFO_UPDATE ; 
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL2 ; 
 scalar_t__ AFMT_INFOFRAME_CONTROL0 ; 
 int AFMT_RESET_FIFO_WHEN_AUDIO_DIS ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 scalar_t__ HDMI_AUDIO_PACKET_CONTROL ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int) ; 

void FUNC13(struct drm_encoder *encoder, u32 offset)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;

	FUNC11(AFMT_INFOFRAME_CONTROL0 + offset,
		AFMT_AUDIO_INFO_UPDATE); /* required for audio info values to be updated */

	FUNC11(AFMT_60958_0 + offset,
		FUNC6(1));

	FUNC11(AFMT_60958_1 + offset,
		FUNC7(2));

	FUNC11(AFMT_60958_2 + offset,
		FUNC0(3) |
		FUNC1(4) |
		FUNC2(5) |
		FUNC3(6) |
		FUNC4(7) |
		FUNC5(8));

	FUNC11(AFMT_AUDIO_PACKET_CONTROL2 + offset,
		FUNC8(0xff));

	FUNC11(HDMI_AUDIO_PACKET_CONTROL + offset,
	       FUNC9(1) | /* set the default audio delay */
	       FUNC10(3)); /* should be suffient for all audio modes and small enough for all hblanks */

	/* allow 60958 channel status and send audio packets fields to be updated */
	FUNC12(AFMT_AUDIO_PACKET_CONTROL + offset,
		  AFMT_RESET_FIFO_WHEN_AUDIO_DIS | AFMT_60958_CS_UPDATE);
}