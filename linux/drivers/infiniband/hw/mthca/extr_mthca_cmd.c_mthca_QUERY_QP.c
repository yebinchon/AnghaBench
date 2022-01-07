
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_mailbox {int dma; } ;
struct mthca_dev {int dummy; } ;


 int CMD_QUERY_QPEE ;
 int CMD_TIME_CLASS_A ;
 int mthca_cmd_box (struct mthca_dev*,int ,int ,int,int ,int ,int ) ;

int mthca_QUERY_QP(struct mthca_dev *dev, u32 num, int is_ee,
     struct mthca_mailbox *mailbox)
{
 return mthca_cmd_box(dev, 0, mailbox->dma, (!!is_ee << 24) | num, 0,
        CMD_QUERY_QPEE, CMD_TIME_CLASS_A);
}
