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
struct drm_device {struct armada_private* dev_private; } ;
struct device {int dummy; } ;
struct armada_private {int /*<<< orphan*/  drm; int /*<<< orphan*/  linear; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 struct drm_device* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct device *dev)
{
	struct drm_device *drm = FUNC2(dev);
	struct armada_private *priv = drm->dev_private;

	FUNC6(&priv->drm);
	FUNC0(&priv->drm);

	FUNC5(&priv->drm);

	FUNC3(&priv->drm);

	FUNC1(dev, &priv->drm);

	FUNC8(&priv->drm);
	FUNC7(&priv->linear);

	FUNC4(&priv->drm);
}