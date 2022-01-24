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
struct tegra_drm_context {int /*<<< orphan*/  channel; } ;
struct tegra_drm_client {int dummy; } ;
struct gr2d {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct gr2d* FUNC1 (struct tegra_drm_client*) ; 

__attribute__((used)) static int FUNC2(struct tegra_drm_client *client,
			     struct tegra_drm_context *context)
{
	struct gr2d *gr2d = FUNC1(client);

	context->channel = FUNC0(gr2d->channel);
	if (!context->channel)
		return -ENOMEM;

	return 0;
}