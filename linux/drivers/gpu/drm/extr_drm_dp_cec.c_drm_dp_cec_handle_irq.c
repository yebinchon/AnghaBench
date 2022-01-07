
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct cec_adapter* adap; } ;
struct drm_dp_aux {TYPE_1__ cec; } ;
struct cec_adapter {int dummy; } ;


 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_MAX_RETRIES ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int DP_CEC_RX_MESSAGE_INFO_VALID ;
 int DP_CEC_TUNNELING_IRQ_FLAGS ;
 int DP_CEC_TX_ADDRESS_NACK_ERROR ;
 int DP_CEC_TX_DATA_NACK_ERROR ;
 int DP_CEC_TX_LINE_ERROR ;
 int DP_CEC_TX_MESSAGE_SENT ;
 int cec_transmit_attempt_done (struct cec_adapter*,int) ;
 int drm_dp_cec_received (struct drm_dp_aux*) ;
 scalar_t__ drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;
 int drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int) ;

__attribute__((used)) static void drm_dp_cec_handle_irq(struct drm_dp_aux *aux)
{
 struct cec_adapter *adap = aux->cec.adap;
 u8 flags;

 if (drm_dp_dpcd_readb(aux, DP_CEC_TUNNELING_IRQ_FLAGS, &flags) < 0)
  return;

 if (flags & DP_CEC_RX_MESSAGE_INFO_VALID)
  drm_dp_cec_received(aux);

 if (flags & DP_CEC_TX_MESSAGE_SENT)
  cec_transmit_attempt_done(adap, CEC_TX_STATUS_OK);
 else if (flags & DP_CEC_TX_LINE_ERROR)
  cec_transmit_attempt_done(adap, CEC_TX_STATUS_ERROR |
      CEC_TX_STATUS_MAX_RETRIES);
 else if (flags &
   (DP_CEC_TX_ADDRESS_NACK_ERROR | DP_CEC_TX_DATA_NACK_ERROR))
  cec_transmit_attempt_done(adap, CEC_TX_STATUS_NACK |
      CEC_TX_STATUS_MAX_RETRIES);
 drm_dp_dpcd_writeb(aux, DP_CEC_TUNNELING_IRQ_FLAGS, flags);
}
