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
struct mdp5_interface {int dummy; } ;
struct mdp5_encoder {int enabled; struct mdp5_interface* intf; struct mdp5_ctl* ctl; } ;
struct mdp5_ctl {int dummy; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp5_encoder*,int /*<<< orphan*/ ) ; 
 struct mdp5_pipeline* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mdp5_ctl*,struct mdp5_pipeline*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp5_ctl*,struct mdp5_pipeline*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mdp5_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*) ; 
 struct mdp5_encoder* FUNC7 (struct drm_encoder*) ; 

void FUNC8(struct drm_encoder *encoder)
{
	struct mdp5_encoder *mdp5_cmd_enc = FUNC7(encoder);
	struct mdp5_ctl *ctl = mdp5_cmd_enc->ctl;
	struct mdp5_interface *intf = mdp5_cmd_enc->intf;
	struct mdp5_pipeline *pipeline = FUNC2(encoder->crtc);

	if (FUNC0(!mdp5_cmd_enc->enabled))
		return;

	FUNC6(encoder);

	FUNC4(ctl, pipeline, false);
	FUNC3(ctl, pipeline, FUNC5(intf), true);

	FUNC1(mdp5_cmd_enc, 0);

	mdp5_cmd_enc->enabled = false;
}