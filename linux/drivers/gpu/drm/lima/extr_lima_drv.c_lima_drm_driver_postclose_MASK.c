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
struct lima_drm_priv {int /*<<< orphan*/  vm; int /*<<< orphan*/  ctx_mgr; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lima_drm_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_device *dev, struct drm_file *file)
{
	struct lima_drm_priv *priv = file->driver_priv;

	FUNC1(&priv->ctx_mgr);
	FUNC2(priv->vm);
	FUNC0(priv);
}