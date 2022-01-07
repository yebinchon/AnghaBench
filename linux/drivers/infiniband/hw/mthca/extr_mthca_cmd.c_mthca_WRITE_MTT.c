
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_TIME_CLASS_B ;
 int CMD_WRITE_MTT ;
 int mthca_cmd (struct mthca_dev*,int ,int,int ,int ,int ) ;

int mthca_WRITE_MTT(struct mthca_dev *dev, struct mthca_mailbox *mailbox,
      int num_mtt)
{
 return mthca_cmd(dev, mailbox->dma, num_mtt, 0, CMD_WRITE_MTT,
    CMD_TIME_CLASS_B);
}
