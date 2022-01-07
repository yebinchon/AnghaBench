
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_xdmac_desc {int active_xfer; scalar_t__ xfer_size; int direction; int descs_list; int lld; } ;


 int DMA_TRANS_NONE ;
 int INIT_LIST_HEAD (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void at_xdmac_init_used_desc(struct at_xdmac_desc *desc)
{
 memset(&desc->lld, 0, sizeof(desc->lld));
 INIT_LIST_HEAD(&desc->descs_list);
 desc->direction = DMA_TRANS_NONE;
 desc->xfer_size = 0;
 desc->active_xfer = 0;
}
