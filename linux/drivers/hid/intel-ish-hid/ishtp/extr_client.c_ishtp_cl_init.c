
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ishtp_device {int dummy; } ;
struct TYPE_8__ {int list; } ;
struct TYPE_7__ {int list; } ;
struct TYPE_6__ {int list; } ;
struct TYPE_5__ {int list; } ;
struct ishtp_cl {int last_dma_acked; int last_ipc_acked; int * last_dma_addr; int last_tx_path; int tx_ring_size; int tx_ring_free_size; int rx_ring_size; TYPE_4__ in_process_list; TYPE_3__ tx_free_list; TYPE_2__ tx_list; TYPE_1__ free_rb_list; struct ishtp_device* dev; int link; int fc_spinlock; int tx_free_list_spinlock; int tx_list_spinlock; int in_process_spinlock; int free_list_spinlock; int wait_ctrl_res; } ;


 int CL_DEF_RX_RING_SIZE ;
 int CL_DEF_TX_RING_SIZE ;
 int CL_TX_PATH_IPC ;
 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 int memset (struct ishtp_cl*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ishtp_cl_init(struct ishtp_cl *cl, struct ishtp_device *dev)
{
 memset(cl, 0, sizeof(struct ishtp_cl));
 init_waitqueue_head(&cl->wait_ctrl_res);
 spin_lock_init(&cl->free_list_spinlock);
 spin_lock_init(&cl->in_process_spinlock);
 spin_lock_init(&cl->tx_list_spinlock);
 spin_lock_init(&cl->tx_free_list_spinlock);
 spin_lock_init(&cl->fc_spinlock);
 INIT_LIST_HEAD(&cl->link);
 cl->dev = dev;

 INIT_LIST_HEAD(&cl->free_rb_list.list);
 INIT_LIST_HEAD(&cl->tx_list.list);
 INIT_LIST_HEAD(&cl->tx_free_list.list);
 INIT_LIST_HEAD(&cl->in_process_list.list);

 cl->rx_ring_size = CL_DEF_RX_RING_SIZE;
 cl->tx_ring_size = CL_DEF_TX_RING_SIZE;
 cl->tx_ring_free_size = cl->tx_ring_size;


 cl->last_tx_path = CL_TX_PATH_IPC;
 cl->last_dma_acked = 1;
 cl->last_dma_addr = ((void*)0);
 cl->last_ipc_acked = 1;
}
