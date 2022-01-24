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
struct rcar_du_wb_conn_state {struct drm_connector_state state; } ;
struct drm_connector {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct drm_connector_state*) ; 
 struct rcar_du_wb_conn_state* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_connector_state *
FUNC3(struct drm_connector *connector)
{
	struct rcar_du_wb_conn_state *copy;

	if (FUNC0(!connector->state))
		return NULL;

	copy = FUNC2(sizeof(*copy), GFP_KERNEL);
	if (!copy)
		return NULL;

	FUNC1(connector, &copy->state);

	return &copy->state;
}