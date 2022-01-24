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
struct tegra_plane {int dummy; } ;
struct tegra_dc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_WIN_CORE_WINDOWGROUP_SET_CONTROL ; 
 unsigned int OWNER_MASK ; 
 unsigned int FUNC0 (struct tegra_dc*,unsigned int) ; 
 unsigned int FUNC1 (struct tegra_plane*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC2(struct tegra_plane *plane, struct tegra_dc *dc)
{
	unsigned int offset =
		FUNC1(plane, DC_WIN_CORE_WINDOWGROUP_SET_CONTROL);

	return FUNC0(dc, offset) & OWNER_MASK;
}