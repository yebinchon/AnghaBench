#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radeon_encoder_atom_dig {TYPE_2__* pin; TYPE_3__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ AFMT_AUDIO_SRC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC2 (struct drm_encoder*) ; 

void FUNC3(struct drm_encoder *encoder)
{
	struct radeon_device *rdev = encoder->dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC2(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;

	if (!dig || !dig->afmt || !dig->pin)
		return;

	FUNC1(AFMT_AUDIO_SRC_CONTROL +  dig->afmt->offset,
	       FUNC0(dig->pin->id));
}