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
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {int /*<<< orphan*/  afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int /*<<< orphan*/  crtc_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCG_AUDIO_DTO0_SOURCE_SEL ; 
 int /*<<< orphan*/  DCCG_AUDIO_DTO_SOURCE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmDCCG_AUDIO_DTO0_MODULE ; 
 int /*<<< orphan*/  mmDCCG_AUDIO_DTO0_PHASE ; 
 int /*<<< orphan*/  mmDCCG_AUDIO_DTO_SOURCE ; 
 struct amdgpu_crtc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct amdgpu_encoder* FUNC4 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC5(struct drm_encoder *encoder, u32 clock)
{
	struct drm_device *dev = encoder->dev;
	struct amdgpu_device *adev = dev->dev_private;
	struct amdgpu_encoder *amdgpu_encoder = FUNC4(encoder);
	struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
	struct amdgpu_crtc *amdgpu_crtc = FUNC3(encoder->crtc);
	u32 dto_phase = 24 * 1000;
	u32 dto_modulo = clock;
	u32 tmp;

	if (!dig || !dig->afmt)
		return;

	/* XXX two dtos; generally use dto0 for hdmi */
	/* Express [24MHz / target pixel clock] as an exact rational
	 * number (coefficient of two integer numbers.  DCCG_AUDIO_DTOx_PHASE
	 * is the numerator, DCCG_AUDIO_DTOx_MODULE is the denominator
	 */
	tmp = FUNC1(mmDCCG_AUDIO_DTO_SOURCE);
	tmp = FUNC0(tmp, DCCG_AUDIO_DTO_SOURCE, DCCG_AUDIO_DTO0_SOURCE_SEL,
			    amdgpu_crtc->crtc_id);
	FUNC2(mmDCCG_AUDIO_DTO_SOURCE, tmp);
	FUNC2(mmDCCG_AUDIO_DTO0_PHASE, dto_phase);
	FUNC2(mmDCCG_AUDIO_DTO0_MODULE, dto_modulo);
}