
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int link; int channel; } ;
struct hsc_channel {int free_msgs_list; int ch; } ;


 int ENOMEM ;
 int HSC_MSGS ;
 int hsc_free_list (int *) ;
 struct hsi_msg* hsc_msg_alloc (int ) ;
 int list_add_tail (int *,int *) ;
 int max_data_size ;

__attribute__((used)) static inline int hsc_msgs_alloc(struct hsc_channel *channel)
{
 struct hsi_msg *msg;
 int i;

 for (i = 0; i < HSC_MSGS; i++) {
  msg = hsc_msg_alloc(max_data_size);
  if (!msg)
   goto out;
  msg->channel = channel->ch;
  list_add_tail(&msg->link, &channel->free_msgs_list);
 }

 return 0;
out:
 hsc_free_list(&channel->free_msgs_list);

 return -ENOMEM;
}
