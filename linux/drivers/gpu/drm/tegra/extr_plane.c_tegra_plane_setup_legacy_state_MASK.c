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
struct tegra_plane_state {int dummy; } ;
struct tegra_plane {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tegra_plane*,struct tegra_plane_state*) ; 
 int FUNC1 (struct tegra_plane*,struct tegra_plane_state*) ; 

int FUNC2(struct tegra_plane *tegra,
				   struct tegra_plane_state *state)
{
	int err;

	err = FUNC0(tegra, state);
	if (err < 0)
		return err;

	err = FUNC1(tegra, state);
	if (err < 0)
		return err;

	return 0;
}