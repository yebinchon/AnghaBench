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
struct mdp5_pipeline {int dummy; } ;
struct mdp5_kms {int /*<<< orphan*/  base; } ;
struct mdp5_interface {int num; } ;
struct mdp5_hw_mixer {int dummy; } ;
struct mdp5_encoder {int enabled; int /*<<< orphan*/  intf_lock; struct mdp5_interface* intf; struct mdp5_ctl* ctl; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_encoder*,int /*<<< orphan*/ ) ; 
 struct mdp5_kms* FUNC3 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp5_hw_mixer*,struct mdp5_interface*) ; 
 struct mdp5_hw_mixer* FUNC5 (int /*<<< orphan*/ ) ; 
 struct mdp5_pipeline* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mdp5_ctl*,struct mdp5_pipeline*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mdp5_ctl*,struct mdp5_pipeline*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mdp5_kms*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mdp5_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_encoder* FUNC14 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC15(struct drm_encoder *encoder)
{
	struct mdp5_encoder *mdp5_encoder = FUNC14(encoder);
	struct mdp5_kms *mdp5_kms = FUNC3(encoder);
	struct mdp5_ctl *ctl = mdp5_encoder->ctl;
	struct mdp5_pipeline *pipeline = FUNC6(encoder->crtc);
	struct mdp5_hw_mixer *mixer = FUNC5(encoder->crtc);
	struct mdp5_interface *intf = mdp5_encoder->intf;
	int intfn = mdp5_encoder->intf->num;
	unsigned long flags;

	if (FUNC1(!mdp5_encoder->enabled))
		return;

	FUNC8(ctl, pipeline, false);

	FUNC12(&mdp5_encoder->intf_lock, flags);
	FUNC9(mdp5_kms, FUNC0(intfn), 0);
	FUNC13(&mdp5_encoder->intf_lock, flags);
	FUNC7(ctl, pipeline, FUNC10(intf), true);

	/*
	 * Wait for a vsync so we know the ENABLE=0 latched before
	 * the (connector) source of the vsync's gets disabled,
	 * otherwise we end up in a funny state if we re-enable
	 * before the disable latches, which results that some of
	 * the settings changes for the new modeset (like new
	 * scanout buffer) don't latch properly..
	 */
	FUNC11(&mdp5_kms->base, FUNC4(mixer, intf));

	FUNC2(mdp5_encoder, 0);

	mdp5_encoder->enabled = false;
}