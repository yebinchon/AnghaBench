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
struct tegra_drm_client {int /*<<< orphan*/ * drm; int /*<<< orphan*/  list; } ;
struct tegra_drm {int /*<<< orphan*/  clients_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct tegra_drm *tegra,
				struct tegra_drm_client *client)
{
	FUNC1(&tegra->clients_lock);
	FUNC0(&client->list);
	client->drm = NULL;
	FUNC2(&tegra->clients_lock);

	return 0;
}