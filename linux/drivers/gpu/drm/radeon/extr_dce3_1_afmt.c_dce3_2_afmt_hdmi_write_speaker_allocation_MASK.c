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
typedef  int u8 ;
typedef  int u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER ; 
 int DP_CONNECTION ; 
 int HDMI_CONNECTION ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int SPEAKER_ALLOCATION_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct drm_encoder *encoder,
	u8 *sadb, int sad_count)
{
	struct radeon_device *rdev = encoder->dev->dev_private;
	u32 tmp;

	/* program the speaker allocation */
	tmp = FUNC0(0, AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER);
	tmp &= ~(DP_CONNECTION | SPEAKER_ALLOCATION_MASK);
	/* set HDMI mode */
	tmp |= HDMI_CONNECTION;
	if (sad_count)
		tmp |= FUNC1(sadb[0]);
	else
		tmp |= FUNC1(5); /* stereo */
	FUNC2(0, AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER, tmp);
}