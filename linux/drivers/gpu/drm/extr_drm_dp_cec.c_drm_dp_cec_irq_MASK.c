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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  adap; } ;
struct drm_dp_aux {TYPE_1__ cec; int /*<<< orphan*/  transfer; } ;

/* Variables and functions */
 int DP_CEC_IRQ ; 
 int /*<<< orphan*/  DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 ; 
 int /*<<< orphan*/  FUNC0 (struct drm_dp_aux*) ; 
 int FUNC1 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_dp_aux*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_dp_aux *aux)
{
	u8 cec_irq;
	int ret;

	/* No transfer function was set, so not a DP connector */
	if (!aux->transfer)
		return;

	FUNC3(&aux->cec.lock);
	if (!aux->cec.adap)
		goto unlock;

	ret = FUNC1(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1,
				&cec_irq);
	if (ret < 0 || !(cec_irq & DP_CEC_IRQ))
		goto unlock;

	FUNC0(aux);
	FUNC2(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, DP_CEC_IRQ);
unlock:
	FUNC4(&aux->cec.lock);
}