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
typedef  int u32 ;
struct radeon_encoder_atom_dig {scalar_t__ dig_encoder; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int /*<<< orphan*/  encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_CNTL ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_MODULE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_PHASE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_CNTL ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_MODULE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_PHASE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO_SELECT ; 
 int FUNC0 (int) ; 
 int DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct radeon_encoder* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct radeon_device *rdev,
	struct radeon_crtc *crtc, unsigned int clock)
{
	struct radeon_encoder *radeon_encoder;
	struct radeon_encoder_atom_dig *dig;
	unsigned int max_ratio = clock / 24000;
	u32 dto_phase;
	u32 wallclock_ratio;
	u32 dto_cntl;

	if (!crtc)
		return;

	radeon_encoder = FUNC3(crtc->encoder);
	dig = radeon_encoder->enc_priv;

	if (!dig)
		return;

	if (max_ratio >= 8) {
		dto_phase = 192 * 1000;
		wallclock_ratio = 3;
	} else if (max_ratio >= 4) {
		dto_phase = 96 * 1000;
		wallclock_ratio = 2;
	} else if (max_ratio >= 2) {
		dto_phase = 48 * 1000;
		wallclock_ratio = 1;
	} else {
		dto_phase = 24 * 1000;
		wallclock_ratio = 0;
	}

	/* Express [24MHz / target pixel clock] as an exact rational
	 * number (coefficient of two integer numbers.  DCCG_AUDIO_DTOx_PHASE
	 * is the numerator, DCCG_AUDIO_DTOx_MODULE is the denominator
	 */
	if (dig->dig_encoder == 0) {
		dto_cntl = FUNC1(DCCG_AUDIO_DTO0_CNTL) & ~DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK;
		dto_cntl |= FUNC0(wallclock_ratio);
		FUNC2(DCCG_AUDIO_DTO0_CNTL, dto_cntl);
		FUNC2(DCCG_AUDIO_DTO0_PHASE, dto_phase);
		FUNC2(DCCG_AUDIO_DTO0_MODULE, clock);
		FUNC2(DCCG_AUDIO_DTO_SELECT, 0); /* select DTO0 */
	} else {
		dto_cntl = FUNC1(DCCG_AUDIO_DTO1_CNTL) & ~DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK;
		dto_cntl |= FUNC0(wallclock_ratio);
		FUNC2(DCCG_AUDIO_DTO1_CNTL, dto_cntl);
		FUNC2(DCCG_AUDIO_DTO1_PHASE, dto_phase);
		FUNC2(DCCG_AUDIO_DTO1_MODULE, clock);
		FUNC2(DCCG_AUDIO_DTO_SELECT, 1); /* select DTO1 */
	}
}