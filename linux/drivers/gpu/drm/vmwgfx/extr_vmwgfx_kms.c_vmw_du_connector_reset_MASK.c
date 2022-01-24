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
struct vmw_connector_state {int /*<<< orphan*/  base; } ;
struct drm_connector {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct vmw_connector_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct drm_connector *connector)
{
	struct vmw_connector_state *vcs;


	if (connector->state) {
		FUNC1(connector->state);

		FUNC3(FUNC5(connector->state));
	}

	vcs = FUNC4(sizeof(*vcs), GFP_KERNEL);

	if (!vcs) {
		FUNC0("Cannot allocate vmw_connector_state\n");
		return;
	}

	FUNC2(connector, &vcs->base);
}