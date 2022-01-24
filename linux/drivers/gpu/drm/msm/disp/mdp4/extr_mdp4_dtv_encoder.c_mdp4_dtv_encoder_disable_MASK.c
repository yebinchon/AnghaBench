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
struct mdp4_kms {int /*<<< orphan*/  base; } ;
struct mdp4_dtv_encoder {int enabled; int /*<<< orphan*/  mdp_clk; int /*<<< orphan*/  hdmi_clk; } ;
struct drm_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDP4_IRQ_EXTERNAL_VSYNC ; 
 int /*<<< orphan*/  REG_MDP4_DTV_ENABLE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp4_dtv_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mdp4_kms* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp4_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct mdp4_dtv_encoder* FUNC6 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC7(struct drm_encoder *encoder)
{
	struct mdp4_dtv_encoder *mdp4_dtv_encoder = FUNC6(encoder);
	struct mdp4_kms *mdp4_kms = FUNC3(encoder);

	if (FUNC0(!mdp4_dtv_encoder->enabled))
		return;

	FUNC4(mdp4_kms, REG_MDP4_DTV_ENABLE, 0);

	/*
	 * Wait for a vsync so we know the ENABLE=0 latched before
	 * the (connector) source of the vsync's gets disabled,
	 * otherwise we end up in a funny state if we re-enable
	 * before the disable latches, which results that some of
	 * the settings changes for the new modeset (like new
	 * scanout buffer) don't latch properly..
	 */
	FUNC5(&mdp4_kms->base, MDP4_IRQ_EXTERNAL_VSYNC);

	FUNC2(mdp4_dtv_encoder->hdmi_clk);
	FUNC2(mdp4_dtv_encoder->mdp_clk);

	FUNC1(mdp4_dtv_encoder, 0);

	mdp4_dtv_encoder->enabled = false;
}