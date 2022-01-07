
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct cec_adapter* adap; } ;
struct drm_dp_aux {TYPE_1__ cec; } ;
struct cec_msg {int len; int msg; } ;
struct cec_adapter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int DP_CEC_RX_MESSAGE_BUFFER ;
 int DP_CEC_RX_MESSAGE_ENDED ;
 int DP_CEC_RX_MESSAGE_INFO ;
 int DP_CEC_RX_MESSAGE_LEN_MASK ;
 int cec_received_msg (struct cec_adapter*,struct cec_msg*) ;
 scalar_t__ drm_dp_dpcd_read (struct drm_dp_aux*,int ,int ,int) ;
 scalar_t__ drm_dp_dpcd_readb (struct drm_dp_aux*,int ,int*) ;

__attribute__((used)) static int drm_dp_cec_received(struct drm_dp_aux *aux)
{
 struct cec_adapter *adap = aux->cec.adap;
 struct cec_msg msg;
 u8 rx_msg_info;
 ssize_t err;

 err = drm_dp_dpcd_readb(aux, DP_CEC_RX_MESSAGE_INFO, &rx_msg_info);
 if (err < 0)
  return err;

 if (!(rx_msg_info & DP_CEC_RX_MESSAGE_ENDED))
  return 0;

 msg.len = (rx_msg_info & DP_CEC_RX_MESSAGE_LEN_MASK) + 1;
 err = drm_dp_dpcd_read(aux, DP_CEC_RX_MESSAGE_BUFFER, msg.msg, msg.len);
 if (err < 0)
  return err;

 cec_received_msg(adap, &msg);
 return 0;
}
