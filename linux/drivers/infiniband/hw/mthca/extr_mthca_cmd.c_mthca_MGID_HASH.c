
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_MGID_HASH ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd_imm (struct mthca_dev*,int ,int *,int ,int ,int ,int ) ;

int mthca_MGID_HASH(struct mthca_dev *dev, struct mthca_mailbox *mailbox,
      u16 *hash)
{
 u64 imm;
 int err;

 err = mthca_cmd_imm(dev, mailbox->dma, &imm, 0, 0, CMD_MGID_HASH,
       CMD_TIME_CLASS_A);

 *hash = imm;
 return err;
}
