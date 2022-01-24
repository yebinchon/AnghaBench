#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_dc {int /*<<< orphan*/ * debugfs_files; } ;
struct drm_minor {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_minor* primary; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debugfs_files ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,struct drm_minor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tegra_dc* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	unsigned int count = FUNC0(debugfs_files);
	struct drm_minor *minor = crtc->dev->primary;
	struct tegra_dc *dc = FUNC3(crtc);

	FUNC1(dc->debugfs_files, count, minor);
	FUNC2(dc->debugfs_files);
	dc->debugfs_files = NULL;
}