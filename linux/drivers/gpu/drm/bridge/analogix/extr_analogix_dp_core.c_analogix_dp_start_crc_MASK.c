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
struct drm_connector {TYPE_1__* state; int /*<<< orphan*/  name; } ;
struct analogix_dp_device {int /*<<< orphan*/  aux; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct analogix_dp_device* FUNC2 (struct drm_connector*) ; 

int FUNC3(struct drm_connector *connector)
{
	struct analogix_dp_device *dp = FUNC2(connector);

	if (!connector->state->crtc) {
		FUNC0("Connector %s doesn't currently have a CRTC.\n",
			  connector->name);
		return -EINVAL;
	}

	return FUNC1(&dp->aux, connector->state->crtc);
}