#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* dev; int /*<<< orphan*/  name; } ;
struct intel_dp {TYPE_3__ aux; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_2__* kdev; struct drm_device* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 struct intel_dp* FUNC4 (struct drm_connector*) ; 
 int FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC6(struct drm_connector *connector)
{
	struct intel_dp *intel_dp = FUNC4(connector);
	struct drm_device *dev = connector->dev;
	int ret;

	ret = FUNC5(connector);
	if (ret)
		return ret;

	FUNC3(connector);

	FUNC0("registering %s bus for %s\n",
		      intel_dp->aux.name, connector->kdev->kobj.name);

	intel_dp->aux.dev = connector->kdev;
	ret = FUNC1(&intel_dp->aux);
	if (!ret)
		FUNC2(&intel_dp->aux,
					      connector->name, dev->dev);
	return ret;
}