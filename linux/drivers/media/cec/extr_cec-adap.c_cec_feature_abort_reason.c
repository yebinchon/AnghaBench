
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cec_msg {int * msg; } ;
struct cec_adapter {int dummy; } ;


 scalar_t__ CEC_LOG_ADDR_UNREGISTERED ;
 int CEC_MSG_FEATURE_ABORT ;
 int cec_msg_feature_abort (struct cec_msg*,int ,int ) ;
 scalar_t__ cec_msg_initiator (struct cec_msg*) ;
 int cec_msg_set_reply_to (struct cec_msg*,struct cec_msg*) ;
 int cec_transmit_msg (struct cec_adapter*,struct cec_msg*,int) ;

__attribute__((used)) static int cec_feature_abort_reason(struct cec_adapter *adap,
        struct cec_msg *msg, u8 reason)
{
 struct cec_msg tx_msg = { };





 if (msg->msg[1] == CEC_MSG_FEATURE_ABORT)
  return 0;

 if (cec_msg_initiator(msg) == CEC_LOG_ADDR_UNREGISTERED)
  return 0;
 cec_msg_set_reply_to(&tx_msg, msg);
 cec_msg_feature_abort(&tx_msg, msg->msg[1], reason);
 return cec_transmit_msg(adap, &tx_msg, 0);
}
