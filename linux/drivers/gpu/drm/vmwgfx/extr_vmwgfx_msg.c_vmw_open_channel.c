
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_channel {int channel_id; unsigned long cookie_high; unsigned long cookie_low; } ;


 int EINVAL ;
 unsigned int GUESTMSG_FLAG_COOKIE ;
 int HIGH_WORD (unsigned long) ;
 int MESSAGE_STATUS_SUCCESS ;
 int VMW_HYPERVISOR_MAGIC ;
 int VMW_PORT (int ,unsigned int,unsigned long,unsigned long,int ,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int VMW_PORT_CMD_OPEN_CHANNEL ;

__attribute__((used)) static int vmw_open_channel(struct rpc_channel *channel, unsigned int protocol)
{
 unsigned long eax, ebx, ecx, edx, si = 0, di = 0;

 VMW_PORT(VMW_PORT_CMD_OPEN_CHANNEL,
  (protocol | GUESTMSG_FLAG_COOKIE), si, di,
  0,
  VMW_HYPERVISOR_MAGIC,
  eax, ebx, ecx, edx, si, di);

 if ((HIGH_WORD(ecx) & MESSAGE_STATUS_SUCCESS) == 0)
  return -EINVAL;

 channel->channel_id = HIGH_WORD(edx);
 channel->cookie_high = si;
 channel->cookie_low = di;

 return 0;
}
