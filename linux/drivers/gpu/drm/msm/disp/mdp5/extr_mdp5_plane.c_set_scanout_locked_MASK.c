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
struct TYPE_2__ {struct msm_kms base; } ;
struct mdp5_kms {TYPE_1__ base; } ;
struct drm_framebuffer {int /*<<< orphan*/ * pitches; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

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
 int /*<<< orphan*/  FUNC10 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct drm_framebuffer*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(struct mdp5_kms *mdp5_kms,
			       enum mdp5_pipe pipe,
			       struct drm_framebuffer *fb)
{
	struct msm_kms *kms = &mdp5_kms->base.base;

	FUNC10(mdp5_kms, FUNC8(pipe),
			FUNC0(fb->pitches[0]) |
			FUNC1(fb->pitches[1]));

	FUNC10(mdp5_kms, FUNC9(pipe),
			FUNC2(fb->pitches[2]) |
			FUNC3(fb->pitches[3]));

	FUNC10(mdp5_kms, FUNC4(pipe),
			FUNC11(fb, kms->aspace, 0));
	FUNC10(mdp5_kms, FUNC5(pipe),
			FUNC11(fb, kms->aspace, 1));
	FUNC10(mdp5_kms, FUNC6(pipe),
			FUNC11(fb, kms->aspace, 2));
	FUNC10(mdp5_kms, FUNC7(pipe),
			FUNC11(fb, kms->aspace, 3));
}