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
struct intel_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  has_hdmi_sink; TYPE_1__ base; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct intel_encoder *encoder,
				    const struct intel_crtc_state *pipe_config,
				    const struct drm_connector_state *conn_state)
{
	struct intel_crtc *crtc = FUNC4(pipe_config->base.crtc);

	FUNC1(!pipe_config->has_hdmi_sink);
	FUNC0("Enabling HDMI audio on pipe %c\n",
			 FUNC3(crtc->pipe));
	FUNC2(encoder, pipe_config, conn_state);
}