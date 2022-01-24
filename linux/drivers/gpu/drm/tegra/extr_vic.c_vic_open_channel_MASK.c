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
struct vic {int /*<<< orphan*/  dev; int /*<<< orphan*/  channel; } ;
struct tegra_drm_context {int /*<<< orphan*/  channel; } ;
struct tegra_drm_client {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vic* FUNC3 (struct tegra_drm_client*) ; 
 int FUNC4 (struct vic*) ; 
 int FUNC5 (struct vic*) ; 

__attribute__((used)) static int FUNC6(struct tegra_drm_client *client,
			    struct tegra_drm_context *context)
{
	struct vic *vic = FUNC3(client);
	int err;

	err = FUNC1(vic->dev);
	if (err < 0)
		return err;

	err = FUNC5(vic);
	if (err < 0)
		goto rpm_put;

	err = FUNC4(vic);
	if (err < 0)
		goto rpm_put;

	context->channel = FUNC0(vic->channel);
	if (!context->channel) {
		err = -ENOMEM;
		goto rpm_put;
	}

	return 0;

rpm_put:
	FUNC2(vic->dev);
	return err;
}