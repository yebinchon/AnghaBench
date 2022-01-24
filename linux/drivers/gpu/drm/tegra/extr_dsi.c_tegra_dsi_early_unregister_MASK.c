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
struct tegra_output {int dummy; } ;
struct tegra_dsi {int /*<<< orphan*/ * debugfs_files; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_output* FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  debugfs_files ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tegra_dsi* FUNC4 (struct tegra_output*) ; 

__attribute__((used)) static void FUNC5(struct drm_connector *connector)
{
	struct tegra_output *output = FUNC1(connector);
	unsigned int count = FUNC0(debugfs_files);
	struct tegra_dsi *dsi = FUNC4(output);

	FUNC2(dsi->debugfs_files, count,
				 connector->dev->primary);
	FUNC3(dsi->debugfs_files);
	dsi->debugfs_files = NULL;
}