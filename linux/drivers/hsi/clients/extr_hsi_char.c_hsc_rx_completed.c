
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int channel; int cl; } ;
struct hsc_client_data {struct hsc_channel* channels; } ;
struct hsc_channel {int free_msgs_list; int rx_wait; int rx_msgs_queue; int flags; } ;


 int HSC_CH_READ ;
 int hsc_add_tail (struct hsc_channel*,struct hsi_msg*,int *) ;
 struct hsc_client_data* hsi_client_drvdata (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void hsc_rx_completed(struct hsi_msg *msg)
{
 struct hsc_client_data *cl_data = hsi_client_drvdata(msg->cl);
 struct hsc_channel *channel = cl_data->channels + msg->channel;

 if (test_bit(HSC_CH_READ, &channel->flags)) {
  hsc_add_tail(channel, msg, &channel->rx_msgs_queue);
  wake_up(&channel->rx_wait);
 } else {
  hsc_add_tail(channel, msg, &channel->free_msgs_list);
 }
}
