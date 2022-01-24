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
struct TYPE_2__ {int /*<<< orphan*/  (* select_pin ) (struct drm_encoder*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 struct radeon_encoder* FUNC1 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC2(struct drm_encoder *encoder)
{
	struct radeon_encoder *radeon_encoder = FUNC1(encoder);

	if (radeon_encoder->audio && radeon_encoder->audio->select_pin)
		radeon_encoder->audio->select_pin(encoder);
}