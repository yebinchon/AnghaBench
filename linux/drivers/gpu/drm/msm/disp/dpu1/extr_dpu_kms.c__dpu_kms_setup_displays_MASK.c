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
struct msm_drm_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct dpu_kms {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_device*,struct msm_drm_private*,struct dpu_kms*) ; 

__attribute__((used)) static int FUNC1(struct drm_device *dev,
				    struct msm_drm_private *priv,
				    struct dpu_kms *dpu_kms)
{
	/**
	 * Extend this function to initialize other
	 * types of displays
	 */

	return FUNC0(dev, priv, dpu_kms);
}