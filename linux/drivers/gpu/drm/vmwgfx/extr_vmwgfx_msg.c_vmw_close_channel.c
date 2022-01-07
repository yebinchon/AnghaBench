
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_channel {unsigned long cookie_high; unsigned long cookie_low; int channel_id; } ;


 int EINVAL ;
 int HIGH_WORD (unsigned long) ;
 int MESSAGE_STATUS_SUCCESS ;
 int VMW_HYPERVISOR_MAGIC ;
 int VMW_PORT (int ,int ,unsigned long,unsigned long,int,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int VMW_PORT_CMD_CLOSE_CHANNEL ;

__attribute__((used)) static int vmw_close_channel(struct rpc_channel *channel)
{
 unsigned long eax, ebx, ecx, edx, si, di;


 si = channel->cookie_high;
 di = channel->cookie_low;

 VMW_PORT(VMW_PORT_CMD_CLOSE_CHANNEL,
  0, si, di,
  channel->channel_id << 16,
  VMW_HYPERVISOR_MAGIC,
  eax, ebx, ecx, edx, si, di);

 if ((HIGH_WORD(ecx) & MESSAGE_STATUS_SUCCESS) == 0)
  return -EINVAL;

 return 0;
}
