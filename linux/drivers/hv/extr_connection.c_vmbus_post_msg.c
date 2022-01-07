
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
union hv_connection_id {TYPE_1__ u; scalar_t__ asu32; } ;
typedef int u32 ;
struct vmbus_channel_message_header {int msgtype; } ;
struct TYPE_4__ {int msg_conn_id; } ;


 int CHANNELMSG_INITIATE_CONTACT ;
 int EAGAIN ;
 int EINVAL ;
 int ENOBUFS ;




 int MAX_UDELAY_MS ;
 int hv_post_message (union hv_connection_id,int,void*,size_t) ;
 int mdelay (int) ;
 int msleep (int) ;
 int pr_err (char*,int) ;
 int udelay (int) ;
 TYPE_2__ vmbus_connection ;

int vmbus_post_msg(void *buffer, size_t buflen, bool can_sleep)
{
 struct vmbus_channel_message_header *hdr;
 union hv_connection_id conn_id;
 int ret = 0;
 int retries = 0;
 u32 usec = 1;

 conn_id.asu32 = 0;
 conn_id.u.id = vmbus_connection.msg_conn_id;






 while (retries < 100) {
  ret = hv_post_message(conn_id, 1, buffer, buflen);

  switch (ret) {
  case 129:
   hdr = buffer;
   if (hdr->msgtype == CHANNELMSG_INITIATE_CONTACT)
    return -EINVAL;




   ret = -EAGAIN;
   break;
  case 130:
  case 131:
   ret = -ENOBUFS;
   break;
  case 128:
   return ret;
  default:
   pr_err("hv_post_msg() failed; error code:%d\n", ret);
   return -EINVAL;
  }

  retries++;
  if (can_sleep && usec > 1000)
   msleep(usec / 1000);
  else if (usec < MAX_UDELAY_MS * 1000)
   udelay(usec);
  else
   mdelay(usec / 1000);

  if (retries < 22)
   usec *= 2;
 }
 return ret;
}
