
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mthca_mailbox {void const* buf; int dma; } ;
struct mthca_dev {int dummy; } ;
struct ib_wc {int src_qp; int sl; int dlid_path_bits; int wc_flags; int pkey_index; int slid; TYPE_1__* qp; } ;
typedef void ib_grh ;
struct TYPE_2__ {int qp_num; } ;


 int CMD_MAD_IFC ;
 int CMD_TIME_CLASS_C ;
 int GFP_KERNEL ;
 int IB_WC_GRH ;
 scalar_t__ IS_ERR (struct mthca_mailbox*) ;
 int MAD_IFC_GRH_OFFSET ;
 int MAD_IFC_G_PATH_OFFSET ;
 int MAD_IFC_MY_QPN_OFFSET ;
 int MAD_IFC_PKEY_OFFSET ;
 int MAD_IFC_RLID_OFFSET ;
 int MAD_IFC_RQPN_OFFSET ;
 int MAD_IFC_SL_OFFSET ;
 int MTHCA_PUT (void*,int,int ) ;
 int PTR_ERR (struct mthca_mailbox*) ;
 int ib_lid_cpu16 (int ) ;
 int memcpy (void*,void const*,int) ;
 int memset (void*,int ,int) ;
 struct mthca_mailbox* mthca_alloc_mailbox (struct mthca_dev*,int ) ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int,int,int ,int ) ;
 int mthca_free_mailbox (struct mthca_dev*,struct mthca_mailbox*) ;

int mthca_MAD_IFC(struct mthca_dev *dev, int ignore_mkey, int ignore_bkey,
    int port, const struct ib_wc *in_wc, const struct ib_grh *in_grh,
    const void *in_mad, void *response_mad)
{
 struct mthca_mailbox *inmailbox, *outmailbox;
 void *inbox;
 int err;
 u32 in_modifier = port;
 u8 op_modifier = 0;
 inmailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(inmailbox))
  return PTR_ERR(inmailbox);
 inbox = inmailbox->buf;

 outmailbox = mthca_alloc_mailbox(dev, GFP_KERNEL);
 if (IS_ERR(outmailbox)) {
  mthca_free_mailbox(dev, inmailbox);
  return PTR_ERR(outmailbox);
 }

 memcpy(inbox, in_mad, 256);





 if (ignore_mkey || !in_wc)
  op_modifier |= 0x1;
 if (ignore_bkey || !in_wc)
  op_modifier |= 0x2;

 if (in_wc) {
  u8 val;

  memset(inbox + 256, 0, 256);

  MTHCA_PUT(inbox, in_wc->qp->qp_num, 0x100);
  MTHCA_PUT(inbox, in_wc->src_qp, 0x108);

  val = in_wc->sl << 4;
  MTHCA_PUT(inbox, val, 0x10c);

  val = in_wc->dlid_path_bits |
   (in_wc->wc_flags & IB_WC_GRH ? 0x80 : 0);
  MTHCA_PUT(inbox, val, 0x10d);

  MTHCA_PUT(inbox, ib_lid_cpu16(in_wc->slid), 0x10e);
  MTHCA_PUT(inbox, in_wc->pkey_index, 0x112);

  if (in_grh)
   memcpy(inbox + 0x140, in_grh, 40);

  op_modifier |= 0x4;

  in_modifier |= ib_lid_cpu16(in_wc->slid) << 16;
 }

 err = mthca_cmd_box(dev, inmailbox->dma, outmailbox->dma,
       in_modifier, op_modifier,
       CMD_MAD_IFC, CMD_TIME_CLASS_C);

 if (!err)
  memcpy(response_mad, outmailbox->buf, 256);

 mthca_free_mailbox(dev, inmailbox);
 mthca_free_mailbox(dev, outmailbox);
 return err;
}
