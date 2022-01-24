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
struct msm_drm_private {scalar_t__ gpu; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
typedef  int /*<<< orphan*/  DEFINE_MUTEX ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev)
{
	static DEFINE_MUTEX(init_lock);
	struct msm_drm_private *priv = dev->dev_private;

	FUNC1(&init_lock);

	if (!priv->gpu)
		priv->gpu = FUNC0(dev);

	FUNC2(&init_lock);
}