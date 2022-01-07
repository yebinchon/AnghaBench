
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cec_msg {int len; unsigned int* msg; int tx_status; } ;
struct cec_log_addrs {unsigned int* log_addr; int log_addr_mask; } ;
struct cec_adapter {int phys_addr; int * phys_addrs; TYPE_1__* ops; int is_configuring; struct cec_log_addrs log_addrs; } ;
struct TYPE_2__ {int (* adap_log_addr ) (struct cec_adapter*,unsigned int) ;} ;


 int CEC_TX_STATUS_ABORTED ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int EINTR ;
 scalar_t__ cec_has_log_addr (struct cec_adapter*,unsigned int) ;
 int cec_transmit_msg_fh (struct cec_adapter*,struct cec_msg*,int *,int) ;
 int stub1 (struct cec_adapter*,unsigned int) ;

__attribute__((used)) static int cec_config_log_addr(struct cec_adapter *adap,
          unsigned int idx,
          unsigned int log_addr)
{
 struct cec_log_addrs *las = &adap->log_addrs;
 struct cec_msg msg = { };
 const unsigned int max_retries = 2;
 unsigned int i;
 int err;

 if (cec_has_log_addr(adap, log_addr))
  return 0;


 msg.len = 1;
 msg.msg[0] = (log_addr << 4) | log_addr;

 for (i = 0; i < max_retries; i++) {
  err = cec_transmit_msg_fh(adap, &msg, ((void*)0), 1);





  if (!adap->is_configuring)
   return -EINTR;

  if (err)
   return err;





  if (msg.tx_status & CEC_TX_STATUS_ABORTED)
   return -EINTR;
  if (msg.tx_status & CEC_TX_STATUS_OK)
   return 0;
  if (msg.tx_status & CEC_TX_STATUS_NACK)
   break;





 }







 if (i == max_retries)
  return 0;





 err = adap->ops->adap_log_addr(adap, log_addr);
 if (err)
  return err;

 las->log_addr[idx] = log_addr;
 las->log_addr_mask |= 1 << log_addr;
 adap->phys_addrs[log_addr] = adap->phys_addr;
 return 1;
}
