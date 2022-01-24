#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int /*<<< orphan*/  page_flipping; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_r128_private_t *dev_priv = dev->dev_private;
	FUNC2("\n");

	FUNC3(dev, file_priv);

	FUNC1(dev_priv);

	FUNC4(dev_priv);

	if (!dev_priv->page_flipping)
		FUNC6(dev);

	FUNC5(dev);

	FUNC0();
	return 0;
}