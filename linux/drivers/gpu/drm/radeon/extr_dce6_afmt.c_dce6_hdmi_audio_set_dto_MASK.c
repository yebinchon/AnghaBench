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
typedef  unsigned int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int /*<<< orphan*/  crtc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_MODULE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_PHASE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO_SOURCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

void FUNC2(struct radeon_device *rdev,
			     struct radeon_crtc *crtc, unsigned int clock)
{
	/* Two dtos; generally use dto0 for HDMI */
	u32 value = 0;

	if (crtc)
		value |= FUNC0(crtc->crtc_id);

	FUNC1(DCCG_AUDIO_DTO_SOURCE, value);

	/* Express [24MHz / target pixel clock] as an exact rational
	 * number (coefficient of two integer numbers.  DCCG_AUDIO_DTOx_PHASE
	 * is the numerator, DCCG_AUDIO_DTOx_MODULE is the denominator
	 */
	FUNC1(DCCG_AUDIO_DTO0_PHASE, 24000);
	FUNC1(DCCG_AUDIO_DTO0_MODULE, clock);
}