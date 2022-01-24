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
typedef  unsigned int u32 ;
struct tegra_plane {unsigned int index; struct tegra_dc* dc; } ;
struct tegra_dc {unsigned int pipe; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_WIN_CORE_WINDOWGROUP_SET_CONTROL ; 
 int EBUSY ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int OWNER_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (struct tegra_dc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_dc*,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (struct tegra_plane*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tegra_plane *plane,
					struct tegra_dc *new)
{
	unsigned int offset =
		FUNC5(plane, DC_WIN_CORE_WINDOWGROUP_SET_CONTROL);
	struct tegra_dc *old = plane->dc, *dc = new ? new : old;
	struct device *dev = new ? new->dev : old->dev;
	unsigned int owner, index = plane->index;
	u32 value;

	value = FUNC3(dc, offset);
	owner = value & OWNER_MASK;

	if (new && (owner != OWNER_MASK && owner != new->pipe)) {
		FUNC1(dev, "window %u owned by head %u\n", index, owner);
		return -EBUSY;
	}

	/*
	 * This seems to happen whenever the head has been disabled with one
	 * or more windows being active. This is harmless because we'll just
	 * reassign the window to the new head anyway.
	 */
	if (old && owner == OWNER_MASK)
		FUNC2(dev, "window %u not owned by head %u but %u\n", index,
			old->pipe, owner);

	value &= ~OWNER_MASK;

	if (new)
		value |= FUNC0(new->pipe);
	else
		value |= OWNER_MASK;

	FUNC4(dc, value, offset);

	plane->dc = new;

	return 0;
}