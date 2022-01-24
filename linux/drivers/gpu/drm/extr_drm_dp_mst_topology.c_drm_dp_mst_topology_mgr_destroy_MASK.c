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
struct drm_dp_mst_topology_mgr {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  base; int /*<<< orphan*/ * aux; int /*<<< orphan*/ * dev; int /*<<< orphan*/  payload_lock; int /*<<< orphan*/ * proposed_vcpis; int /*<<< orphan*/ * payloads; int /*<<< orphan*/  destroy_connector_work; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_mst_topology_mgr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_dp_mst_topology_mgr *mgr)
{
	FUNC1(mgr, false);
	FUNC2(&mgr->work);
	FUNC2(&mgr->destroy_connector_work);
	FUNC4(&mgr->payload_lock);
	FUNC3(mgr->payloads);
	mgr->payloads = NULL;
	FUNC3(mgr->proposed_vcpis);
	mgr->proposed_vcpis = NULL;
	FUNC5(&mgr->payload_lock);
	mgr->dev = NULL;
	mgr->aux = NULL;
	FUNC0(&mgr->base);
	mgr->funcs = NULL;
}