
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;
struct ishtp_device {TYPE_1__ read_list; int host_clients_map; scalar_t__ open_handle_count; int bh_hbm_work; int fw_clients_lock; int cl_list_lock; int device_list_lock; int device_lock; int read_list_spinlock; int wait_hbm_recvd_msg; int rd_msg_spinlock; scalar_t__ rd_msg_fifo_tail; scalar_t__ rd_msg_fifo_head; int device_list; int cl_list; int dev_state; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int ISHTP_CLIENTS_MAX ;
 int ISHTP_DEV_INITIALIZING ;
 int bh_hbm_work_fn ;
 int bitmap_set (int ,int ,int) ;
 int bitmap_zero (int ,int ) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void ishtp_device_init(struct ishtp_device *dev)
{
 dev->dev_state = ISHTP_DEV_INITIALIZING;
 INIT_LIST_HEAD(&dev->cl_list);
 INIT_LIST_HEAD(&dev->device_list);
 dev->rd_msg_fifo_head = 0;
 dev->rd_msg_fifo_tail = 0;
 spin_lock_init(&dev->rd_msg_spinlock);

 init_waitqueue_head(&dev->wait_hbm_recvd_msg);
 spin_lock_init(&dev->read_list_spinlock);
 spin_lock_init(&dev->device_lock);
 spin_lock_init(&dev->device_list_lock);
 spin_lock_init(&dev->cl_list_lock);
 spin_lock_init(&dev->fw_clients_lock);
 INIT_WORK(&dev->bh_hbm_work, bh_hbm_work_fn);

 bitmap_zero(dev->host_clients_map, ISHTP_CLIENTS_MAX);
 dev->open_handle_count = 0;




 bitmap_set(dev->host_clients_map, 0, 1);

 INIT_LIST_HEAD(&dev->read_list.list);

}
