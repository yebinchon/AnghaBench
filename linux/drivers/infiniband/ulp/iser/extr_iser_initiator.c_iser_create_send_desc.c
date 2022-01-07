
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct iser_tx_desc {int num_sge; TYPE_2__ iser_header; int dma_addr; } ;
struct iser_device {int ib_device; } ;
struct iser_ctrl {int dummy; } ;
struct TYPE_3__ {struct iser_device* device; } ;
struct iser_conn {TYPE_1__ ib_conn; } ;


 int DMA_TO_DEVICE ;
 int ISER_HEADERS_LEN ;
 int ISER_VER ;
 int ib_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void iser_create_send_desc(struct iser_conn *iser_conn,
      struct iser_tx_desc *tx_desc)
{
 struct iser_device *device = iser_conn->ib_conn.device;

 ib_dma_sync_single_for_cpu(device->ib_device,
  tx_desc->dma_addr, ISER_HEADERS_LEN, DMA_TO_DEVICE);

 memset(&tx_desc->iser_header, 0, sizeof(struct iser_ctrl));
 tx_desc->iser_header.flags = ISER_VER;
 tx_desc->num_sge = 1;
}
