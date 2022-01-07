
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int cl; int status; } ;
struct hsc_client_data {struct hsc_channel* channels; } ;
struct hsc_channel {int rx_wait; int rx_msgs_queue; int flags; int free_msgs_list; } ;


 int HSC_CH_READ ;
 int HSC_DEVS ;
 int HSI_STATUS_COMPLETED ;
 int clear_bit (int ,int *) ;
 int hsc_add_tail (struct hsc_channel*,struct hsi_msg*,int *) ;
 int hsc_break_req_destructor (struct hsi_msg*) ;
 struct hsi_msg* hsc_get_first_msg (struct hsc_channel*,int *) ;
 int hsc_msg_len_set (struct hsi_msg*,int ) ;
 int hsi_async_read (int ,struct hsi_msg*) ;
 struct hsc_client_data* hsi_client_drvdata (int ) ;
 int hsi_flush (int ) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void hsc_break_received(struct hsi_msg *msg)
{
 struct hsc_client_data *cl_data = hsi_client_drvdata(msg->cl);
 struct hsc_channel *channel = cl_data->channels;
 int i, ret;


 for (i = 0; i < HSC_DEVS; i++, channel++) {
  struct hsi_msg *msg2;

  if (!test_bit(HSC_CH_READ, &channel->flags))
   continue;
  msg2 = hsc_get_first_msg(channel, &channel->free_msgs_list);
  if (!msg2)
   continue;
  clear_bit(HSC_CH_READ, &channel->flags);
  hsc_msg_len_set(msg2, 0);
  msg2->status = HSI_STATUS_COMPLETED;
  hsc_add_tail(channel, msg2, &channel->rx_msgs_queue);
  wake_up(&channel->rx_wait);
 }
 hsi_flush(msg->cl);
 ret = hsi_async_read(msg->cl, msg);
 if (ret < 0)
  hsc_break_req_destructor(msg);
}
