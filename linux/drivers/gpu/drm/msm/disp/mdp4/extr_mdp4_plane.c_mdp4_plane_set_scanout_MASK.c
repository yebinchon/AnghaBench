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
struct msm_kms {int /*<<< orphan*/  aspace; } ;
struct mdp4_plane {int pipe; } ;
struct TYPE_2__ {struct msm_kms base; } ;
struct mdp4_kms {TYPE_1__ base; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int /*<<< orphan*/ * pitches; } ;
typedef  enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct mdp4_kms* FUNC10 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC11 (struct mdp4_kms*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct drm_framebuffer*,int /*<<< orphan*/ ,int) ; 
 struct mdp4_plane* FUNC13 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC14(struct drm_plane *plane,
		struct drm_framebuffer *fb)
{
	struct mdp4_plane *mdp4_plane = FUNC13(plane);
	struct mdp4_kms *mdp4_kms = FUNC10(plane);
	struct msm_kms *kms = &mdp4_kms->base.base;
	enum mdp4_pipe pipe = mdp4_plane->pipe;

	FUNC11(mdp4_kms, FUNC8(pipe),
			FUNC0(fb->pitches[0]) |
			FUNC1(fb->pitches[1]));

	FUNC11(mdp4_kms, FUNC9(pipe),
			FUNC2(fb->pitches[2]) |
			FUNC3(fb->pitches[3]));

	FUNC11(mdp4_kms, FUNC4(pipe),
			FUNC12(fb, kms->aspace, 0));
	FUNC11(mdp4_kms, FUNC5(pipe),
			FUNC12(fb, kms->aspace, 1));
	FUNC11(mdp4_kms, FUNC6(pipe),
			FUNC12(fb, kms->aspace, 2));
	FUNC11(mdp4_kms, FUNC7(pipe),
			FUNC12(fb, kms->aspace, 3));
}