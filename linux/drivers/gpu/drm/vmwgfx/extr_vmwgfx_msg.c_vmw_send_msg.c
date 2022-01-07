
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_channel {unsigned long cookie_high; unsigned long cookie_low; int channel_id; } ;


 int EINVAL ;
 int HIGH_WORD (unsigned long) ;
 int MESSAGE_STATUS_CPT ;
 int MESSAGE_STATUS_HB ;
 int MESSAGE_STATUS_SUCCESS ;
 int RETRIES ;
 int VMW_HYPERVISOR_MAGIC ;
 int VMW_PORT (int ,size_t,unsigned long,unsigned long,int,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int VMW_PORT_CMD_SENDSIZE ;
 size_t strlen (char const*) ;
 unsigned long vmw_port_hb_out (struct rpc_channel*,char const*,int) ;

__attribute__((used)) static int vmw_send_msg(struct rpc_channel *channel, const char *msg)
{
 unsigned long eax, ebx, ecx, edx, si, di;
 size_t msg_len = strlen(msg);
 int retries = 0;

 while (retries < RETRIES) {
  retries++;


  si = channel->cookie_high;
  di = channel->cookie_low;

  VMW_PORT(VMW_PORT_CMD_SENDSIZE,
   msg_len, si, di,
   channel->channel_id << 16,
   VMW_HYPERVISOR_MAGIC,
   eax, ebx, ecx, edx, si, di);

  if ((HIGH_WORD(ecx) & MESSAGE_STATUS_SUCCESS) == 0) {

   return -EINVAL;
  }


  ebx = vmw_port_hb_out(channel, msg,
          !!(HIGH_WORD(ecx) & MESSAGE_STATUS_HB));

  if ((HIGH_WORD(ebx) & MESSAGE_STATUS_SUCCESS) != 0) {
   return 0;
  } else if ((HIGH_WORD(ebx) & MESSAGE_STATUS_CPT) != 0) {

   continue;
  } else {
   break;
  }
 }

 return -EINVAL;
}
