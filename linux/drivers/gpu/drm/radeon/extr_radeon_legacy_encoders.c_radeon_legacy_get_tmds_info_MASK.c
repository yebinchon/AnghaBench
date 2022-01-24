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
struct radeon_encoder_int_tmds {int dummy; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {scalar_t__ is_atom_bios; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct radeon_encoder_int_tmds* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct radeon_encoder*,struct radeon_encoder_int_tmds*) ; 
 int FUNC2 (struct radeon_encoder*,struct radeon_encoder_int_tmds*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_encoder*,struct radeon_encoder_int_tmds*) ; 

__attribute__((used)) static struct radeon_encoder_int_tmds *FUNC4(struct radeon_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder_int_tmds *tmds = NULL;
	bool ret;

	tmds = FUNC0(sizeof(struct radeon_encoder_int_tmds), GFP_KERNEL);

	if (!tmds)
		return NULL;

	if (rdev->is_atom_bios)
		ret = FUNC1(encoder, tmds);
	else
		ret = FUNC2(encoder, tmds);

	if (ret == false)
		FUNC3(encoder, tmds);

	return tmds;
}