
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_login_desc {int * rsp; int * req; int rsp_dma; int req_dma; } ;
struct iser_device {int ib_device; } ;
struct TYPE_2__ {struct iser_device* device; } ;
struct iser_conn {struct iser_login_desc login_desc; TYPE_1__ ib_conn; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int ISER_RX_LOGIN_SIZE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void iser_free_login_buf(struct iser_conn *iser_conn)
{
 struct iser_device *device = iser_conn->ib_conn.device;
 struct iser_login_desc *desc = &iser_conn->login_desc;

 if (!desc->req)
  return;

 ib_dma_unmap_single(device->ib_device, desc->req_dma,
       ISCSI_DEF_MAX_RECV_SEG_LEN, DMA_TO_DEVICE);

 ib_dma_unmap_single(device->ib_device, desc->rsp_dma,
       ISER_RX_LOGIN_SIZE, DMA_FROM_DEVICE);

 kfree(desc->req);
 kfree(desc->rsp);


 desc->req = ((void*)0);
 desc->rsp = ((void*)0);
}
