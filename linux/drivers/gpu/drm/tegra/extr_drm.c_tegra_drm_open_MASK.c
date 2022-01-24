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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tegra_drm_file* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_device *drm, struct drm_file *filp)
{
	struct tegra_drm_file *fpriv;

	fpriv = FUNC1(sizeof(*fpriv), GFP_KERNEL);
	if (!fpriv)
		return -ENOMEM;

	FUNC0(&fpriv->contexts);
	FUNC2(&fpriv->lock);
	filp->driver_priv = fpriv;

	return 0;
}