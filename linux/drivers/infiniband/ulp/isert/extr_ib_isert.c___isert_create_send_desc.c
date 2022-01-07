
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct isert_device {TYPE_1__* pd; } ;
struct TYPE_6__ {int flags; } ;
struct iser_tx_desc {int num_sge; TYPE_2__* tx_sg; TYPE_3__ iser_header; } ;
struct iser_ctrl {int dummy; } ;
struct TYPE_5__ {scalar_t__ lkey; } ;
struct TYPE_4__ {scalar_t__ local_dma_lkey; } ;


 int ISCSI_CTRL ;
 int isert_dbg (char*,struct iser_tx_desc*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
__isert_create_send_desc(struct isert_device *device,
    struct iser_tx_desc *tx_desc)
{

 memset(&tx_desc->iser_header, 0, sizeof(struct iser_ctrl));
 tx_desc->iser_header.flags = ISCSI_CTRL;

 tx_desc->num_sge = 1;

 if (tx_desc->tx_sg[0].lkey != device->pd->local_dma_lkey) {
  tx_desc->tx_sg[0].lkey = device->pd->local_dma_lkey;
  isert_dbg("tx_desc %p lkey mismatch, fixing\n", tx_desc);
 }
}
