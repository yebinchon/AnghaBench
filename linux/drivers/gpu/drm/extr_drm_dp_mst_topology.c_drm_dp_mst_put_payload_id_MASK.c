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
struct drm_dp_mst_topology_mgr {int max_payloads; int /*<<< orphan*/  payload_lock; int /*<<< orphan*/  payload_mask; TYPE_1__** proposed_vcpis; int /*<<< orphan*/  vcpi_mask; } ;
struct TYPE_2__ {int vcpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_dp_mst_topology_mgr *mgr,
				      int vcpi)
{
	int i;
	if (vcpi == 0)
		return;

	FUNC2(&mgr->payload_lock);
	FUNC0("putting payload %d\n", vcpi);
	FUNC1(vcpi - 1, &mgr->vcpi_mask);

	for (i = 0; i < mgr->max_payloads; i++) {
		if (mgr->proposed_vcpis[i])
			if (mgr->proposed_vcpis[i]->vcpi == vcpi) {
				mgr->proposed_vcpis[i] = NULL;
				FUNC1(i + 1, &mgr->payload_mask);
			}
	}
	FUNC3(&mgr->payload_lock);
}