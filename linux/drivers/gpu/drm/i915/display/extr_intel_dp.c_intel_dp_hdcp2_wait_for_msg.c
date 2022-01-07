
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct intel_hdcp {int is_paired; } ;
struct intel_dp {TYPE_1__* attached_connector; } ;
struct intel_digital_port {struct intel_dp dp; } ;
struct hdcp2_dp_msg_data {scalar_t__ msg_id; int timeout2; int timeout; int msg_detectable; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct intel_hdcp hdcp; } ;


 int DRM_DEBUG_KMS (char*,scalar_t__,int,int) ;
 int ETIMEDOUT ;
 scalar_t__ HDCP_2_2_AKE_SEND_HPRIME ;
 int hdcp2_detect_msg_availability (struct intel_digital_port*,scalar_t__,int*) ;
 int intel_dp_hdcp_wait_for_cp_irq (struct intel_hdcp*,int) ;
 int mdelay (int) ;

__attribute__((used)) static ssize_t
intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
       const struct hdcp2_dp_msg_data *hdcp2_msg_data)
{
 struct intel_dp *dp = &intel_dig_port->dp;
 struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 u8 msg_id = hdcp2_msg_data->msg_id;
 int ret, timeout;
 bool msg_ready = 0;

 if (msg_id == HDCP_2_2_AKE_SEND_HPRIME && !hdcp->is_paired)
  timeout = hdcp2_msg_data->timeout2;
 else
  timeout = hdcp2_msg_data->timeout;





 if (!hdcp2_msg_data->msg_detectable) {
  mdelay(timeout);
  ret = 0;
 } else {




  intel_dp_hdcp_wait_for_cp_irq(hdcp, timeout);
  ret = hdcp2_detect_msg_availability(intel_dig_port,
          msg_id, &msg_ready);
  if (!msg_ready)
   ret = -ETIMEDOUT;
 }

 if (ret)
  DRM_DEBUG_KMS("msg_id %d, ret %d, timeout(mSec): %d\n",
         hdcp2_msg_data->msg_id, ret, timeout);

 return ret;
}
