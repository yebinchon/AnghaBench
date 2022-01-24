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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  unregister_work; int /*<<< orphan*/  adap; } ;
struct drm_dp_aux {TYPE_1__ cec; int /*<<< orphan*/  transfer; } ;

/* Variables and functions */
 int HZ ; 
 int NEVER_UNREG_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_aux*,int /*<<< orphan*/ *) ; 
 int drm_dp_cec_unregister_delay ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

void FUNC6(struct drm_dp_aux *aux)
{
	/* No transfer function was set, so not a DP connector */
	if (!aux->transfer)
		return;

	FUNC0(&aux->cec.unregister_work);

	FUNC3(&aux->cec.lock);
	if (!aux->cec.adap)
		goto unlock;

	FUNC1(aux->cec.adap);
	/*
	 * We're done if we want to keep the CEC device
	 * (drm_dp_cec_unregister_delay is >= NEVER_UNREG_DELAY) or if the
	 * DPCD still indicates the CEC capability (expected for an integrated
	 * HDMI branch device).
	 */
	if (drm_dp_cec_unregister_delay < NEVER_UNREG_DELAY &&
	    !FUNC2(aux, NULL)) {
		/*
		 * Unregister the CEC adapter after drm_dp_cec_unregister_delay
		 * seconds. This to debounce short HPD off-and-on cycles from
		 * displays.
		 */
		FUNC5(&aux->cec.unregister_work,
				      drm_dp_cec_unregister_delay * HZ);
	}
unlock:
	FUNC4(&aux->cec.lock);
}