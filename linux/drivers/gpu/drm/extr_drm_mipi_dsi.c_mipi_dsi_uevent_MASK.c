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
struct mipi_dsi_device {int /*<<< orphan*/  name; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MIPI_DSI_MODULE_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (struct kobj_uevent_env*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,struct kobj_uevent_env*) ; 
 struct mipi_dsi_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct mipi_dsi_device *dsi = FUNC2(dev);
	int err;

	err = FUNC1(dev, env);
	if (err != -ENODEV)
		return err;

	FUNC0(env, "MODALIAS=%s%s", MIPI_DSI_MODULE_PREFIX,
		       dsi->name);

	return 0;
}