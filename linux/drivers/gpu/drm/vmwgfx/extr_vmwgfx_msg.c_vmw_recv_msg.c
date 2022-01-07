
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_channel {unsigned long cookie_high; unsigned long cookie_low; int channel_id; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIGH_WORD (unsigned long) ;
 int MESSAGE_STATUS_CPT ;
 int MESSAGE_STATUS_DORECV ;
 int MESSAGE_STATUS_HB ;
 int MESSAGE_STATUS_SUCCESS ;
 int RETRIES ;
 int VMW_HYPERVISOR_MAGIC ;
 int VMW_PORT (int ,int,unsigned long,unsigned long,int,int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int VMW_PORT_CMD_RECVSIZE ;
 int VMW_PORT_CMD_RECVSTATUS ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 unsigned long vmw_port_hb_in (struct rpc_channel*,char*,size_t,int) ;

__attribute__((used)) static int vmw_recv_msg(struct rpc_channel *channel, void **msg,
   size_t *msg_len)
{
 unsigned long eax, ebx, ecx, edx, si, di;
 char *reply;
 size_t reply_len;
 int retries = 0;


 *msg_len = 0;
 *msg = ((void*)0);

 while (retries < RETRIES) {
  retries++;


  si = channel->cookie_high;
  di = channel->cookie_low;

  VMW_PORT(VMW_PORT_CMD_RECVSIZE,
   0, si, di,
   channel->channel_id << 16,
   VMW_HYPERVISOR_MAGIC,
   eax, ebx, ecx, edx, si, di);

  if ((HIGH_WORD(ecx) & MESSAGE_STATUS_SUCCESS) == 0) {
   DRM_ERROR("Failed to get reply size for host message.\n");
   return -EINVAL;
  }


  if ((HIGH_WORD(ecx) & MESSAGE_STATUS_DORECV) == 0)
   return 0;

  reply_len = ebx;
  reply = kzalloc(reply_len + 1, GFP_KERNEL);
  if (!reply) {
   DRM_ERROR("Cannot allocate memory for host message reply.\n");
   return -ENOMEM;
  }



  ebx = vmw_port_hb_in(channel, reply, reply_len,
         !!(HIGH_WORD(ecx) & MESSAGE_STATUS_HB));
  if ((HIGH_WORD(ebx) & MESSAGE_STATUS_SUCCESS) == 0) {
   kfree(reply);
   reply = ((void*)0);
   if ((HIGH_WORD(ebx) & MESSAGE_STATUS_CPT) != 0) {

    continue;
   }

   return -EINVAL;
  }

  reply[reply_len] = '\0';



  si = channel->cookie_high;
  di = channel->cookie_low;

  VMW_PORT(VMW_PORT_CMD_RECVSTATUS,
   MESSAGE_STATUS_SUCCESS, si, di,
   channel->channel_id << 16,
   VMW_HYPERVISOR_MAGIC,
   eax, ebx, ecx, edx, si, di);

  if ((HIGH_WORD(ecx) & MESSAGE_STATUS_SUCCESS) == 0) {
   kfree(reply);
   reply = ((void*)0);
   if ((HIGH_WORD(ecx) & MESSAGE_STATUS_CPT) != 0) {

    continue;
   }

   return -EINVAL;
  }

  break;
 }

 if (!reply)
  return -EINVAL;

 *msg_len = reply_len;
 *msg = reply;

 return 0;
}
