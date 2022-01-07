
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct drm_dp_aux {int dummy; } ;
struct cec_msg {int len; int msg; } ;
struct cec_adapter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int DP_CEC_TX_MESSAGE_BUFFER ;
 int DP_CEC_TX_MESSAGE_INFO ;
 int DP_CEC_TX_MESSAGE_SEND ;
 struct drm_dp_aux* cec_get_drvdata (struct cec_adapter*) ;
 scalar_t__ drm_dp_dpcd_write (struct drm_dp_aux*,int ,int ,int) ;
 scalar_t__ drm_dp_dpcd_writeb (struct drm_dp_aux*,int ,int) ;
 unsigned int min (int,scalar_t__) ;

__attribute__((used)) static int drm_dp_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
        u32 signal_free_time, struct cec_msg *msg)
{
 struct drm_dp_aux *aux = cec_get_drvdata(adap);
 unsigned int retries = min(5, attempts - 1);
 ssize_t err;

 err = drm_dp_dpcd_write(aux, DP_CEC_TX_MESSAGE_BUFFER,
    msg->msg, msg->len);
 if (err < 0)
  return err;

 err = drm_dp_dpcd_writeb(aux, DP_CEC_TX_MESSAGE_INFO,
     (msg->len - 1) | (retries << 4) |
     DP_CEC_TX_MESSAGE_SEND);
 return err < 0 ? err : 0;
}
