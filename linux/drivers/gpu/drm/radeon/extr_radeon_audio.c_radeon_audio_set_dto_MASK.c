#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeon_encoder {TYPE_2__* audio; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* set_dto ) (struct radeon_device*,struct radeon_crtc*,unsigned int) ;} ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,struct radeon_crtc*,unsigned int) ; 
 struct radeon_crtc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC2 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC3(struct drm_encoder *encoder, unsigned int clock)
{
	struct radeon_device *rdev = encoder->dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC2(encoder);
	struct radeon_crtc *crtc = FUNC1(encoder->crtc);

	if (radeon_encoder->audio && radeon_encoder->audio->set_dto)
		radeon_encoder->audio->set_dto(rdev, crtc, clock);
}