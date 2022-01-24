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
struct drm_device {int dummy; } ;
struct drm_connector {TYPE_3__* encoder; int /*<<< orphan*/  state; } ;
struct dm_crtc_state {TYPE_2__* stream; } ;
struct amdgpu_dm_connector {scalar_t__ dc_sink; int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct amdgpu_crtc {TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  crtc; } ;
struct TYPE_5__ {scalar_t__ sink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct amdgpu_crtc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct amdgpu_dm_connector* FUNC2 (struct drm_connector*) ; 
 struct dm_crtc_state* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_device *dev,
				    struct drm_connector *connector)
{
	struct amdgpu_dm_connector *aconnector = FUNC2(connector);
	struct amdgpu_crtc *disconnected_acrtc;
	struct dm_crtc_state *acrtc_state;

	if (!aconnector->dc_sink || !connector->state || !connector->encoder)
		return;

	disconnected_acrtc = FUNC1(connector->encoder->crtc);
	if (!disconnected_acrtc)
		return;

	acrtc_state = FUNC3(disconnected_acrtc->base.state);
	if (!acrtc_state->stream)
		return;

	/*
	 * If the previous sink is not released and different from the current,
	 * we deduce we are in a state where we can not rely on usermode call
	 * to turn on the display, so we do it here
	 */
	if (acrtc_state->stream->sink != aconnector->dc_sink)
		FUNC0(&aconnector->base);
}