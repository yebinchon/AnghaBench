
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wr_msg_ctl_info {int link; } ;
struct pci_dev {int dev; } ;
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {scalar_t__ mtu; int * devc; int * ops; int wr_free_list; int wr_processing_list; int wr_processing_spinlock; int wait_hw_ready; } ;
struct ish_hw {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IPC_PAYLOAD_SIZE ;
 int IPC_TX_FIFO_SIZE ;
 int dev_err (int *,char*,int) ;
 void* devm_kzalloc (int *,int,int ) ;
 int init_waitqueue_head (int *) ;
 int ish_hw_ops ;
 int ishtp_device_init (struct ishtp_device*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

struct ishtp_device *ish_dev_init(struct pci_dev *pdev)
{
 struct ishtp_device *dev;
 int i;

 dev = devm_kzalloc(&pdev->dev,
      sizeof(struct ishtp_device) + sizeof(struct ish_hw),
      GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 ishtp_device_init(dev);

 init_waitqueue_head(&dev->wait_hw_ready);

 spin_lock_init(&dev->wr_processing_spinlock);


 INIT_LIST_HEAD(&dev->wr_processing_list);
 INIT_LIST_HEAD(&dev->wr_free_list);
 for (i = 0; i < IPC_TX_FIFO_SIZE; i++) {
  struct wr_msg_ctl_info *tx_buf;

  tx_buf = devm_kzalloc(&pdev->dev,
          sizeof(struct wr_msg_ctl_info),
          GFP_KERNEL);
  if (!tx_buf) {




   dev_err(dev->devc,
    "[ishtp-ish]: failure in Tx FIFO allocations (%d)\n",
    i);
   break;
  }
  list_add_tail(&tx_buf->link, &dev->wr_free_list);
 }

 dev->ops = &ish_hw_ops;
 dev->devc = &pdev->dev;
 dev->mtu = IPC_PAYLOAD_SIZE - sizeof(struct ishtp_msg_hdr);
 return dev;
}
