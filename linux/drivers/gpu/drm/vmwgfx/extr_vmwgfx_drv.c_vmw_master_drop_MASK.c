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
struct vmw_private {int /*<<< orphan*/  enable_fb; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_private*) ; 
 struct vmw_private* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_private*) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev,
			    struct drm_file *file_priv)
{
	struct vmw_private *dev_priv = FUNC1(dev);

	FUNC0(dev_priv);
	if (!dev_priv->enable_fb)
		FUNC2(dev_priv);
}