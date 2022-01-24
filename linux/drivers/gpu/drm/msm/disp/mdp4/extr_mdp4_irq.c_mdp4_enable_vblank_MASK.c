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
struct msm_kms {int dummy; } ;
struct mdp4_kms {int dummy; } ;
struct drm_crtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC2 (struct mdp4_kms*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mdp4_kms* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_kms*) ; 

int FUNC6(struct msm_kms *kms, struct drm_crtc *crtc)
{
	struct mdp4_kms *mdp4_kms = FUNC4(FUNC5(kms));

	FUNC2(mdp4_kms);
	FUNC3(FUNC5(kms),
			FUNC0(crtc), true);
	FUNC1(mdp4_kms);

	return 0;
}