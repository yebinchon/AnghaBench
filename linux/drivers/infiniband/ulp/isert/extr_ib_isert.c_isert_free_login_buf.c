
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isert_conn {int login_req_buf; int login_req_dma; int login_rsp_buf; int login_rsp_dma; TYPE_1__* device; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ib_device* ib_device; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ISER_RX_PAYLOAD_SIZE ;
 int ib_dma_unmap_single (struct ib_device*,int ,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void
isert_free_login_buf(struct isert_conn *isert_conn)
{
 struct ib_device *ib_dev = isert_conn->device->ib_device;

 ib_dma_unmap_single(ib_dev, isert_conn->login_rsp_dma,
       ISER_RX_PAYLOAD_SIZE, DMA_TO_DEVICE);
 kfree(isert_conn->login_rsp_buf);

 ib_dma_unmap_single(ib_dev, isert_conn->login_req_dma,
       ISER_RX_PAYLOAD_SIZE,
       DMA_FROM_DEVICE);
 kfree(isert_conn->login_req_buf);
}
