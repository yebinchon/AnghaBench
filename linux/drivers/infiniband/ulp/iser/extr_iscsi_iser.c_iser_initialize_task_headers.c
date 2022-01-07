
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_11__ {int * next; } ;
struct TYPE_12__ {TYPE_4__ wr; } ;
struct TYPE_10__ {int * next; } ;
struct iser_tx_desc {int mapped; TYPE_6__* tx_sg; int dma_addr; TYPE_5__ reg_wr; TYPE_3__ inv_wr; } ;
struct iser_device {TYPE_7__* pd; int ib_device; } ;
struct TYPE_9__ {struct iser_device* device; } ;
struct iser_conn {scalar_t__ state; int state_mutex; TYPE_2__ ib_conn; } ;
struct iscsi_task {int sc; struct iscsi_iser_task* dd_data; TYPE_1__* conn; } ;
struct iscsi_iser_task {struct iser_conn* iser_conn; } ;
struct TYPE_14__ {int local_dma_lkey; } ;
struct TYPE_13__ {int lkey; int length; int addr; } ;
struct TYPE_8__ {struct iser_conn* dd_data; } ;


 int DMA_TO_DEVICE ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ ISER_CONN_UP ;
 int ISER_HEADERS_LEN ;
 int ib_dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ ib_dma_mapping_error (int ,int ) ;
 int in_interrupt () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int const) ;

int
iser_initialize_task_headers(struct iscsi_task *task,
        struct iser_tx_desc *tx_desc)
{
 struct iser_conn *iser_conn = task->conn->dd_data;
 struct iser_device *device = iser_conn->ib_conn.device;
 struct iscsi_iser_task *iser_task = task->dd_data;
 u64 dma_addr;
 const bool mgmt_task = !task->sc && !in_interrupt();
 int ret = 0;

 if (unlikely(mgmt_task))
  mutex_lock(&iser_conn->state_mutex);

 if (unlikely(iser_conn->state != ISER_CONN_UP)) {
  ret = -ENODEV;
  goto out;
 }

 dma_addr = ib_dma_map_single(device->ib_device, (void *)tx_desc,
    ISER_HEADERS_LEN, DMA_TO_DEVICE);
 if (ib_dma_mapping_error(device->ib_device, dma_addr)) {
  ret = -ENOMEM;
  goto out;
 }

 tx_desc->inv_wr.next = ((void*)0);
 tx_desc->reg_wr.wr.next = ((void*)0);
 tx_desc->mapped = 1;
 tx_desc->dma_addr = dma_addr;
 tx_desc->tx_sg[0].addr = tx_desc->dma_addr;
 tx_desc->tx_sg[0].length = ISER_HEADERS_LEN;
 tx_desc->tx_sg[0].lkey = device->pd->local_dma_lkey;

 iser_task->iser_conn = iser_conn;
out:
 if (unlikely(mgmt_task))
  mutex_unlock(&iser_conn->state_mutex);

 return ret;
}
