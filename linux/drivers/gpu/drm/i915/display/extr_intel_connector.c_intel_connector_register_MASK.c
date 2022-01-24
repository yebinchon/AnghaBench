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
struct intel_connector {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_connector* FUNC4 (struct drm_connector*) ; 

int FUNC5(struct drm_connector *connector)
{
	struct intel_connector *intel_connector = FUNC4(connector);
	int ret;

	ret = FUNC1(intel_connector);
	if (ret)
		goto err;

	if (FUNC0(FUNC3(connector->dev))) {
		ret = -EFAULT;
		goto err_backlight;
	}

	return 0;

err_backlight:
	FUNC2(intel_connector);
err:
	return ret;
}