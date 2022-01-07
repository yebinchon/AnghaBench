
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int data; } ;
struct ishtp_cl_tx_ring {int list; TYPE_3__ send_buf; } ;
struct TYPE_9__ {int list; } ;
struct ishtp_cl {int tx_ring_size; TYPE_5__* device; int tx_free_list_spinlock; scalar_t__ tx_ring_free_size; TYPE_4__ tx_free_list; } ;
struct TYPE_10__ {int dev; TYPE_2__* fw_client; } ;
struct TYPE_6__ {size_t max_msg_length; } ;
struct TYPE_7__ {TYPE_1__ props; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int ishtp_cl_free_tx_ring (struct ishtp_cl*) ;
 int kfree (struct ishtp_cl_tx_ring*) ;
 int kmalloc (size_t,int ) ;
 struct ishtp_cl_tx_ring* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ishtp_cl_alloc_tx_ring(struct ishtp_cl *cl)
{
 size_t len = cl->device->fw_client->props.max_msg_length;
 int j;
 unsigned long flags;

 cl->tx_ring_free_size = 0;


 for (j = 0; j < cl->tx_ring_size; ++j) {
  struct ishtp_cl_tx_ring *tx_buf;

  tx_buf = kzalloc(sizeof(struct ishtp_cl_tx_ring), GFP_KERNEL);
  if (!tx_buf)
   goto out;

  tx_buf->send_buf.data = kmalloc(len, GFP_KERNEL);
  if (!tx_buf->send_buf.data) {
   kfree(tx_buf);
   goto out;
  }

  spin_lock_irqsave(&cl->tx_free_list_spinlock, flags);
  list_add_tail(&tx_buf->list, &cl->tx_free_list.list);
  ++cl->tx_ring_free_size;
  spin_unlock_irqrestore(&cl->tx_free_list_spinlock, flags);
 }
 return 0;
out:
 dev_err(&cl->device->dev, "error in allocating Tx pool\n");
 ishtp_cl_free_tx_ring(cl);
 return -ENOMEM;
}
