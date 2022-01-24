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
struct drm_dp_vcpi {int pbn; int aligned_pbn; int num_slots; } ;
struct drm_dp_mst_topology_mgr {int pbn_div; } ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (struct drm_dp_mst_topology_mgr*,struct drm_dp_vcpi*) ; 

__attribute__((used)) static int FUNC1(struct drm_dp_mst_topology_mgr *mgr,
			    struct drm_dp_vcpi *vcpi, int pbn, int slots)
{
	int ret;

	/* max. time slots - one slot for MTP header */
	if (slots > 63)
		return -ENOSPC;

	vcpi->pbn = pbn;
	vcpi->aligned_pbn = slots * mgr->pbn_div;
	vcpi->num_slots = slots;

	ret = FUNC0(mgr, vcpi);
	if (ret < 0)
		return ret;
	return 0;
}