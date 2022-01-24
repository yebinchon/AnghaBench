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
struct msm_kms {int dummy; } ;
struct mdp5_kms {TYPE_1__* pdev; } ;
struct drm_crtc {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct mdp5_kms* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_kms*) ; 

int FUNC6(struct msm_kms *kms, struct drm_crtc *crtc)
{
	struct mdp5_kms *mdp5_kms = FUNC4(FUNC5(kms));
	struct device *dev = &mdp5_kms->pdev->dev;

	FUNC2(dev);
	FUNC1(FUNC5(kms),
			FUNC0(crtc), true);
	FUNC3(dev);

	return 0;
}