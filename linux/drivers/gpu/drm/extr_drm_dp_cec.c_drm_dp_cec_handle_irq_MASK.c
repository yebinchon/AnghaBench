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
struct TYPE_2__ {struct cec_adapter* adap; } ;
struct drm_dp_aux {TYPE_1__ cec; } ;
struct cec_adapter {int dummy; } ;

/* Variables and functions */
 int CEC_TX_STATUS_ERROR ; 
 int CEC_TX_STATUS_MAX_RETRIES ; 
 int CEC_TX_STATUS_NACK ; 
 int CEC_TX_STATUS_OK ; 
 int DP_CEC_RX_MESSAGE_INFO_VALID ; 
 int /*<<< orphan*/  DP_CEC_TUNNELING_IRQ_FLAGS ; 
 int DP_CEC_TX_ADDRESS_NACK_ERROR ; 
 int DP_CEC_TX_DATA_NACK_ERROR ; 
 int DP_CEC_TX_LINE_ERROR ; 
 int DP_CEC_TX_MESSAGE_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct cec_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_aux*) ; 
 scalar_t__ FUNC2 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_aux*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct drm_dp_aux *aux)
{
	struct cec_adapter *adap = aux->cec.adap;
	u8 flags;

	if (FUNC2(aux, DP_CEC_TUNNELING_IRQ_FLAGS, &flags) < 0)
		return;

	if (flags & DP_CEC_RX_MESSAGE_INFO_VALID)
		FUNC1(aux);

	if (flags & DP_CEC_TX_MESSAGE_SENT)
		FUNC0(adap, CEC_TX_STATUS_OK);
	else if (flags & DP_CEC_TX_LINE_ERROR)
		FUNC0(adap, CEC_TX_STATUS_ERROR |
						CEC_TX_STATUS_MAX_RETRIES);
	else if (flags &
		 (DP_CEC_TX_ADDRESS_NACK_ERROR | DP_CEC_TX_DATA_NACK_ERROR))
		FUNC0(adap, CEC_TX_STATUS_NACK |
						CEC_TX_STATUS_MAX_RETRIES);
	FUNC3(aux, DP_CEC_TUNNELING_IRQ_FLAGS, flags);
}