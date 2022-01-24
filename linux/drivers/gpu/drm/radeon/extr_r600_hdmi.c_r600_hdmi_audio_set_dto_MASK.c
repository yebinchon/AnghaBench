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
struct radeon_encoder_atom_dig {scalar_t__ dig_encoder; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int /*<<< orphan*/  encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_MODULE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_PHASE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_MODULE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO1_PHASE ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct radeon_encoder* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct radeon_device *rdev,
			     struct radeon_crtc *crtc, unsigned int clock)
{
	struct radeon_encoder *radeon_encoder;
	struct radeon_encoder_atom_dig *dig;

	if (!crtc)
		return;

	radeon_encoder = FUNC1(crtc->encoder);
	dig = radeon_encoder->enc_priv;

	if (!dig)
		return;

	if (dig->dig_encoder == 0) {
		FUNC0(DCCG_AUDIO_DTO0_PHASE, 24000 * 100);
		FUNC0(DCCG_AUDIO_DTO0_MODULE, clock * 100);
		FUNC0(DCCG_AUDIO_DTO_SELECT, 0); /* select DTO0 */
	} else {
		FUNC0(DCCG_AUDIO_DTO1_PHASE, 24000 * 100);
		FUNC0(DCCG_AUDIO_DTO1_MODULE, clock * 100);
		FUNC0(DCCG_AUDIO_DTO_SELECT, 1); /* select DTO1 */
	}
}