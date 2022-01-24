#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct edid {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_2__* adap; int /*<<< orphan*/  parent; int /*<<< orphan*/  name; int /*<<< orphan*/  unregister_work; } ;
struct drm_dp_aux {TYPE_1__ cec; int /*<<< orphan*/  transfer; } ;
struct TYPE_9__ {int capabilities; unsigned int available_log_addrs; } ;

/* Variables and functions */
 int CEC_CAP_DEFAULTS ; 
 int CEC_CAP_MONITOR_ALL ; 
 int CEC_CAP_NEEDS_HPD ; 
 int CEC_CAP_RC ; 
 unsigned int CEC_MAX_LOG_ADDRS ; 
 int DP_CEC_MULTIPLE_LA_CAPABLE ; 
 int DP_CEC_SNOOPING_CAPABLE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,struct drm_dp_aux*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct edid const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  drm_dp_cec_adap_ops ; 
 int /*<<< orphan*/  FUNC7 (struct drm_dp_aux*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct drm_dp_aux *aux, const struct edid *edid)
{
	u32 cec_caps = CEC_CAP_DEFAULTS | CEC_CAP_NEEDS_HPD;
	unsigned int num_las = 1;
	u8 cap;

	/* No transfer function was set, so not a DP connector */
	if (!aux->transfer)
		return;

#ifndef CONFIG_MEDIA_CEC_RC
	/*
	 * CEC_CAP_RC is part of CEC_CAP_DEFAULTS, but it is stripped by
	 * cec_allocate_adapter() if CONFIG_MEDIA_CEC_RC is undefined.
	 *
	 * Do this here as well to ensure the tests against cec_caps are
	 * correct.
	 */
	cec_caps &= ~CEC_CAP_RC;
#endif
	FUNC1(&aux->cec.unregister_work);

	FUNC8(&aux->cec.lock);
	if (!FUNC7(aux, &cap)) {
		/* CEC is not supported, unregister any existing adapter */
		FUNC6(aux->cec.adap);
		aux->cec.adap = NULL;
		goto unlock;
	}

	if (cap & DP_CEC_SNOOPING_CAPABLE)
		cec_caps |= CEC_CAP_MONITOR_ALL;
	if (cap & DP_CEC_MULTIPLE_LA_CAPABLE)
		num_las = CEC_MAX_LOG_ADDRS;

	if (aux->cec.adap) {
		if (aux->cec.adap->capabilities == cec_caps &&
		    aux->cec.adap->available_log_addrs == num_las) {
			/* Unchanged, so just set the phys addr */
			FUNC5(aux->cec.adap, edid);
			goto unlock;
		}
		/*
		 * The capabilities changed, so unregister the old
		 * adapter first.
		 */
		FUNC6(aux->cec.adap);
	}

	/* Create a new adapter */
	aux->cec.adap = FUNC2(&drm_dp_cec_adap_ops,
					     aux, aux->cec.name, cec_caps,
					     num_las);
	if (FUNC0(aux->cec.adap)) {
		aux->cec.adap = NULL;
		goto unlock;
	}
	if (FUNC4(aux->cec.adap, aux->cec.parent)) {
		FUNC3(aux->cec.adap);
		aux->cec.adap = NULL;
	} else {
		/*
		 * Update the phys addr for the new CEC adapter. When called
		 * from drm_dp_cec_register_connector() edid == NULL, so in
		 * that case the phys addr is just invalidated.
		 */
		FUNC5(aux->cec.adap, edid);
	}
unlock:
	FUNC9(&aux->cec.lock);
}