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
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct dpu_kms {int dummy; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dpu_kms* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dpu_kms *FUNC2(struct drm_crtc *crtc)
{
	struct msm_drm_private *priv;

	if (!crtc->dev || !crtc->dev->dev_private) {
		FUNC0("invalid device\n");
		return NULL;
	}

	priv = crtc->dev->dev_private;
	if (!priv || !priv->kms) {
		FUNC0("invalid kms\n");
		return NULL;
	}

	return FUNC1(priv->kms);
}