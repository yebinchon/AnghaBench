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
struct lima_drm_priv {int /*<<< orphan*/  ctx_mgr; } ;
struct lima_device {int dummy; } ;
struct drm_lima_ctx_create {int /*<<< orphan*/  id; scalar_t__ _pad; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct lima_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lima_device* FUNC1 (struct drm_device*) ; 

__attribute__((used)) static int FUNC2(struct drm_device *dev, void *data, struct drm_file *file)
{
	struct drm_lima_ctx_create *args = data;
	struct lima_drm_priv *priv = file->driver_priv;
	struct lima_device *ldev = FUNC1(dev);

	if (args->_pad)
		return -EINVAL;

	return FUNC0(ldev, &priv->ctx_mgr, &args->id);
}