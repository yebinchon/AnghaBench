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
struct mdp5_kms {int dummy; } ;
struct mdp5_interface {int num; } ;
struct mdp5_encoder {int enabled; int /*<<< orphan*/  intf_lock; struct mdp5_interface* intf; struct mdp5_ctl* ctl; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp5_encoder*,int) ; 
 struct mdp5_kms* FUNC3 (struct drm_encoder*) ; 
 struct mdp5_pipeline* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mdp5_ctl*,struct mdp5_pipeline*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mdp5_ctl*,struct mdp5_pipeline*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mdp5_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_encoder* FUNC11 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC12(struct drm_encoder *encoder)
{
	struct mdp5_encoder *mdp5_encoder = FUNC11(encoder);
	struct mdp5_kms *mdp5_kms = FUNC3(encoder);
	struct mdp5_ctl *ctl = mdp5_encoder->ctl;
	struct mdp5_interface *intf = mdp5_encoder->intf;
	struct mdp5_pipeline *pipeline = FUNC4(encoder->crtc);
	int intfn = intf->num;
	unsigned long flags;

	if (FUNC1(mdp5_encoder->enabled))
		return;

	FUNC2(mdp5_encoder, 1);
	FUNC9(&mdp5_encoder->intf_lock, flags);
	FUNC7(mdp5_kms, FUNC0(intfn), 1);
	FUNC10(&mdp5_encoder->intf_lock, flags);
	FUNC5(ctl, pipeline, FUNC8(intf), true);

	FUNC6(ctl, pipeline, true);

	mdp5_encoder->enabled = true;
}