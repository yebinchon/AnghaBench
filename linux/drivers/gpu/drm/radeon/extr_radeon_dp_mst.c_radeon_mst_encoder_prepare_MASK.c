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
struct radeon_encoder_mst {int dig_encoder; int /*<<< orphan*/  port; struct radeon_encoder* primary; } ;
struct radeon_encoder_atom_dig {int dig_encoder; int /*<<< orphan*/  port; struct radeon_encoder* primary; } ;
struct radeon_encoder {int /*<<< orphan*/  offset; int /*<<< orphan*/  base; struct radeon_encoder_mst* enc_priv; } ;
struct radeon_connector {int /*<<< orphan*/  port; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  DRM_MODE_DPMS_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct drm_encoder*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 struct radeon_connector* FUNC5 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct radeon_connector *radeon_connector;
	struct radeon_encoder *radeon_encoder, *primary;
	struct radeon_encoder_mst *mst_enc;
	struct radeon_encoder_atom_dig *dig_enc;

	radeon_connector = FUNC5(encoder);
	if (!radeon_connector) {
		FUNC0("failed to find connector %p\n", encoder);
		return;
	}
	radeon_encoder = FUNC6(encoder);

	FUNC4(encoder, DRM_MODE_DPMS_OFF);

	mst_enc = radeon_encoder->enc_priv;

	primary = mst_enc->primary;

	dig_enc = primary->enc_priv;

	mst_enc->port = radeon_connector->port;

	if (dig_enc->dig_encoder == -1) {
		dig_enc->dig_encoder = FUNC2(&primary->base, -1);
		primary->offset = FUNC3(dig_enc->dig_encoder);
		FUNC1(encoder, dig_enc->dig_encoder);


	}
	FUNC0("%d %d\n", dig_enc->dig_encoder, primary->offset);
}