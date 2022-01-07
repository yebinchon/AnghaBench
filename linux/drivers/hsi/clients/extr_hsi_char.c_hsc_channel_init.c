
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsc_channel {int tx_msgs_queue; int rx_msgs_queue; int free_msgs_list; int lock; int tx_wait; int rx_wait; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void hsc_channel_init(struct hsc_channel *channel)
{
 init_waitqueue_head(&channel->rx_wait);
 init_waitqueue_head(&channel->tx_wait);
 spin_lock_init(&channel->lock);
 INIT_LIST_HEAD(&channel->free_msgs_list);
 INIT_LIST_HEAD(&channel->rx_msgs_queue);
 INIT_LIST_HEAD(&channel->tx_msgs_queue);
}
