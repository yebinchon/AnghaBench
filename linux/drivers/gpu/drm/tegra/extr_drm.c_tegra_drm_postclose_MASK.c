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
struct tegra_drm_file {int /*<<< orphan*/  lock; int /*<<< orphan*/  contexts; } ;
struct drm_file {struct tegra_drm_file* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tegra_drm_context_cleanup ; 

__attribute__((used)) static void FUNC6(struct drm_device *drm, struct drm_file *file)
{
	struct tegra_drm_file *fpriv = file->driver_priv;

	FUNC4(&fpriv->lock);
	FUNC1(&fpriv->contexts, tegra_drm_context_cleanup, NULL);
	FUNC5(&fpriv->lock);

	FUNC0(&fpriv->contexts);
	FUNC3(&fpriv->lock);
	FUNC2(fpriv);
}