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
struct radeon_encoder_atom_dig {int /*<<< orphan*/  afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_2__ {int vco_freq; } ;
struct radeon_device {TYPE_1__ clock; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_encoder*) ; 
 scalar_t__ FUNC3 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 struct drm_connector* FUNC9 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC10 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC11(struct drm_encoder *encoder,
				     struct drm_display_mode *mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC10(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	struct drm_connector *connector = FUNC9(encoder);

	if (!dig || !dig->afmt)
		return;

	if (!connector)
		return;

	if (FUNC0(FUNC8(connector))) {
		FUNC7(encoder);
		FUNC6(encoder);
		FUNC5(encoder, mode);
		FUNC4(encoder, rdev->clock.vco_freq * 10);
		FUNC2(encoder);
		FUNC1(encoder);

		if (FUNC3(encoder, mode) < 0)
			return;
	}
}