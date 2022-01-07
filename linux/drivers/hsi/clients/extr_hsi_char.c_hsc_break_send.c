
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int break_frame; int (* destructor ) (struct hsi_msg*) ;int (* complete ) (struct hsi_msg*) ;} ;
struct hsi_client {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct hsi_msg* hsi_alloc_msg (int ,int ) ;
 int hsi_async_write (struct hsi_client*,struct hsi_msg*) ;
 int hsi_free_msg (struct hsi_msg*) ;

__attribute__((used)) static int hsc_break_send(struct hsi_client *cl)
{
 struct hsi_msg *msg;
 int ret;

 msg = hsi_alloc_msg(0, GFP_ATOMIC);
 if (!msg)
  return -ENOMEM;
 msg->break_frame = 1;
 msg->complete = hsi_free_msg;
 msg->destructor = hsi_free_msg;
 ret = hsi_async_write(cl, msg);
 if (ret < 0)
  hsi_free_msg(msg);

 return ret;
}
