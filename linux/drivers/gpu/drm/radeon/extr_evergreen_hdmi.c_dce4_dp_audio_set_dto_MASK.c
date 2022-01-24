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
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_CNTL ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_MODULE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_PHASE ; 
 unsigned int DCCG_AUDIO_DTO1_USE_512FBR_DTO ; 
 unsigned int DCCG_AUDIO_DTO_SEL ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO_SOURCE ; 
 unsigned int DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK ; 
 int /*<<< orphan*/  DCE41_DENTIST_DISPCLK_CNTL ; 
 unsigned int DENTIST_DPREFCLK_WDIVIDER_MASK ; 
 unsigned int DENTIST_DPREFCLK_WDIVIDER_SHIFT ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 

void FUNC5(struct radeon_device *rdev,
			   struct radeon_crtc *crtc, unsigned int clock)
{
	u32 value;

	value = FUNC2(DCCG_AUDIO_DTO1_CNTL) & ~DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK;
	value |= DCCG_AUDIO_DTO1_USE_512FBR_DTO;
	FUNC3(DCCG_AUDIO_DTO1_CNTL, value);

	/* Two dtos; generally use dto1 for DP */
	value = 0;
	value |= DCCG_AUDIO_DTO_SEL;

	if (crtc)
		value |= FUNC1(crtc->crtc_id);

	FUNC3(DCCG_AUDIO_DTO_SOURCE, value);

	/* Express [24MHz / target pixel clock] as an exact rational
	 * number (coefficient of two integer numbers.  DCCG_AUDIO_DTOx_PHASE
	 * is the numerator, DCCG_AUDIO_DTOx_MODULE is the denominator
	 */
	if (FUNC0(rdev)) {
		unsigned int div = (FUNC2(DCE41_DENTIST_DISPCLK_CNTL) &
			DENTIST_DPREFCLK_WDIVIDER_MASK) >>
			DENTIST_DPREFCLK_WDIVIDER_SHIFT;
		div = FUNC4(div);

		if (div)
			clock = 100 * clock / div;
	}

	FUNC3(DCCG_AUDIO_DTO1_PHASE, 24000);
	FUNC3(DCCG_AUDIO_DTO1_MODULE, clock);
}