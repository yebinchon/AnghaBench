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
struct radeon_encoder_atom_dig {int /*<<< orphan*/  afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 scalar_t__ FUNC3 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_connector*) ; 
 struct drm_connector* FUNC12 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC14 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC15(struct drm_encoder *encoder,
				       struct drm_display_mode *mode)
{
	struct radeon_encoder *radeon_encoder = FUNC14(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	struct drm_connector *connector = FUNC12(encoder);

	if (!dig || !dig->afmt)
		return;

	if (!connector)
		return;

	if (FUNC0(FUNC11(connector))) {
		FUNC5(encoder, true);

		FUNC10(encoder);
		FUNC9(encoder);
		FUNC8(encoder, mode);
		FUNC4(encoder, mode->clock);
		FUNC6(encoder);
		FUNC13(encoder);
		FUNC7(encoder, mode->clock);
		FUNC2(encoder);
		FUNC1(encoder);

		if (FUNC3(encoder, mode) < 0)
			return;

		FUNC5(encoder, false);
	} else {
		FUNC13(encoder);

		if (FUNC3(encoder, mode) < 0)
			return;
	}
}