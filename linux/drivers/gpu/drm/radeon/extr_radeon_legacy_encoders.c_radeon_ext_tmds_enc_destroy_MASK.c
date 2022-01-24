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
struct radeon_encoder {struct radeon_encoder* enc_priv; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_encoder*) ; 
 struct radeon_encoder* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder)
{
	struct radeon_encoder *radeon_encoder = FUNC2(encoder);
	/* don't destroy the i2c bus record here, this will be done in radeon_i2c_fini */
	FUNC1(radeon_encoder->enc_priv);
	FUNC0(encoder);
	FUNC1(radeon_encoder);
}