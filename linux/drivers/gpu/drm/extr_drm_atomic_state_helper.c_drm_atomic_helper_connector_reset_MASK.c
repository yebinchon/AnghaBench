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
struct drm_connector_state {int dummy; } ;
struct drm_connector {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_connector_state*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct drm_connector_state* FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(struct drm_connector *connector)
{
	struct drm_connector_state *conn_state =
		FUNC3(sizeof(*conn_state), GFP_KERNEL);

	if (connector->state)
		FUNC0(connector->state);

	FUNC2(connector->state);
	FUNC1(connector, conn_state);
}