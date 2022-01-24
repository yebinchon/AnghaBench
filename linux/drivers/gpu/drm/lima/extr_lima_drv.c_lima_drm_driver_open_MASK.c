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
struct lima_drm_priv {int /*<<< orphan*/  ctx_mgr; int /*<<< orphan*/  vm; } ;
struct lima_device {int dummy; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct lima_drm_priv*) ; 
 struct lima_drm_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lima_device*) ; 
 struct lima_device* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, struct drm_file *file)
{
	int err;
	struct lima_drm_priv *priv;
	struct lima_device *ldev = FUNC4(dev);

	priv = FUNC1(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->vm = FUNC3(ldev);
	if (!priv->vm) {
		err = -ENOMEM;
		goto err_out0;
	}

	FUNC2(&priv->ctx_mgr);

	file->driver_priv = priv;
	return 0;

err_out0:
	FUNC0(priv);
	return err;
}