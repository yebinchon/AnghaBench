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
struct radeon_encoder {TYPE_1__* audio; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;
struct cea_sad {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_sad_regs ) (struct drm_encoder*,struct cea_sad*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct cea_sad**) ; 
 int /*<<< orphan*/  FUNC3 (struct cea_sad*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 struct drm_connector* FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,struct cea_sad*,int) ; 
 struct radeon_encoder* FUNC7 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC8(struct drm_encoder *encoder)
{
	struct drm_connector *connector = FUNC5(encoder);
	struct radeon_encoder *radeon_encoder = FUNC7(encoder);
	struct cea_sad *sads;
	int sad_count;

	if (!connector)
		return;

	sad_count = FUNC2(FUNC4(connector), &sads);
	if (sad_count <= 0) {
		FUNC1("Couldn't read SADs: %d\n", sad_count);
		return;
	}
	FUNC0(!sads);

	if (radeon_encoder->audio && radeon_encoder->audio->write_sad_regs)
		radeon_encoder->audio->write_sad_regs(encoder, sads, sad_count);

	FUNC3(sads);
}