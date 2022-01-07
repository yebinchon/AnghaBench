
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; } ;
struct hns_roce_dev {TYPE_1__ cmd; } ;
struct hns_roce_cmd_mailbox {int dma; int buf; } ;


 int dma_pool_free (int ,int ,int ) ;
 int kfree (struct hns_roce_cmd_mailbox*) ;

void hns_roce_free_cmd_mailbox(struct hns_roce_dev *hr_dev,
          struct hns_roce_cmd_mailbox *mailbox)
{
 if (!mailbox)
  return;

 dma_pool_free(hr_dev->cmd.pool, mailbox->buf, mailbox->dma);
 kfree(mailbox);
}
