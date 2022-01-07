
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ishtp_cl {int tx_ring_free_size; int tx_free_list_spinlock; TYPE_3__* device; } ;
struct TYPE_6__ {TYPE_2__* fw_client; } ;
struct TYPE_4__ {int max_msg_length; } ;
struct TYPE_5__ {TYPE_1__ props; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ishtp_cl_get_tx_free_buffer_size(struct ishtp_cl *cl)
{
 unsigned long tx_free_flags;
 int size;

 spin_lock_irqsave(&cl->tx_free_list_spinlock, tx_free_flags);
 size = cl->tx_ring_free_size * cl->device->fw_client->props.max_msg_length;
 spin_unlock_irqrestore(&cl->tx_free_list_spinlock, tx_free_flags);

 return size;
}
