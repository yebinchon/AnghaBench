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
struct drm_dp_vcpi {int vcpi; } ;
struct drm_dp_mst_topology_mgr {int max_payloads; int /*<<< orphan*/  payload_lock; struct drm_dp_vcpi** proposed_vcpis; int /*<<< orphan*/  vcpi_mask; int /*<<< orphan*/  payload_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drm_dp_mst_topology_mgr *mgr,
					struct drm_dp_vcpi *vcpi)
{
	int ret, vcpi_ret;

	FUNC2(&mgr->payload_lock);
	ret = FUNC1(&mgr->payload_mask, mgr->max_payloads + 1);
	if (ret > mgr->max_payloads) {
		ret = -EINVAL;
		FUNC0("out of payload ids %d\n", ret);
		goto out_unlock;
	}

	vcpi_ret = FUNC1(&mgr->vcpi_mask, mgr->max_payloads + 1);
	if (vcpi_ret > mgr->max_payloads) {
		ret = -EINVAL;
		FUNC0("out of vcpi ids %d\n", ret);
		goto out_unlock;
	}

	FUNC4(ret, &mgr->payload_mask);
	FUNC4(vcpi_ret, &mgr->vcpi_mask);
	vcpi->vcpi = vcpi_ret + 1;
	mgr->proposed_vcpis[ret - 1] = vcpi;
out_unlock:
	FUNC3(&mgr->payload_lock);
	return ret;
}