
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ishtp_cl_rb {int list; } ;
struct TYPE_5__ {int list; } ;
struct ishtp_cl {int rx_ring_size; TYPE_2__* device; int free_list_spinlock; TYPE_1__ free_rb_list; } ;
struct TYPE_7__ {size_t max_msg_length; } ;
struct TYPE_8__ {TYPE_3__ props; } ;
struct TYPE_6__ {int dev; TYPE_4__* fw_client; } ;


 int ENOMEM ;
 int dev_err (int *,char*) ;
 int ishtp_cl_free_rx_ring (struct ishtp_cl*) ;
 int ishtp_io_rb_alloc_buf (struct ishtp_cl_rb*,size_t) ;
 struct ishtp_cl_rb* ishtp_io_rb_init (struct ishtp_cl*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ishtp_cl_alloc_rx_ring(struct ishtp_cl *cl)
{
 size_t len = cl->device->fw_client->props.max_msg_length;
 int j;
 struct ishtp_cl_rb *rb;
 int ret = 0;
 unsigned long flags;

 for (j = 0; j < cl->rx_ring_size; ++j) {
  rb = ishtp_io_rb_init(cl);
  if (!rb) {
   ret = -ENOMEM;
   goto out;
  }
  ret = ishtp_io_rb_alloc_buf(rb, len);
  if (ret)
   goto out;
  spin_lock_irqsave(&cl->free_list_spinlock, flags);
  list_add_tail(&rb->list, &cl->free_rb_list.list);
  spin_unlock_irqrestore(&cl->free_list_spinlock, flags);
 }

 return 0;

out:
 dev_err(&cl->device->dev, "error in allocating Rx buffers\n");
 ishtp_cl_free_rx_ring(cl);
 return ret;
}
