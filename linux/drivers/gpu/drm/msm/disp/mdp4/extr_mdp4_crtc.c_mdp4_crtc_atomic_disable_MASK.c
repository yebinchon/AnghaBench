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
struct mdp4_crtc {int enabled; int /*<<< orphan*/  err; int /*<<< orphan*/  name; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 struct mdp4_kms* FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mdp4_crtc* FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC7(struct drm_crtc *crtc,
				     struct drm_crtc_state *old_state)
{
	struct mdp4_crtc *mdp4_crtc = FUNC6(crtc);
	struct mdp4_kms *mdp4_kms = FUNC3(crtc);

	FUNC0("%s", mdp4_crtc->name);

	if (FUNC1(!mdp4_crtc->enabled))
		return;

	/* Disable/save vblank irq handling before power is disabled */
	FUNC2(crtc);

	FUNC5(&mdp4_kms->base, &mdp4_crtc->err);
	FUNC4(mdp4_kms);

	mdp4_crtc->enabled = false;
}