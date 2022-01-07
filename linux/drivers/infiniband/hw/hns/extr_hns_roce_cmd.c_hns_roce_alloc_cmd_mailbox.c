
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; } ;
struct hns_roce_dev {TYPE_1__ cmd; } ;
struct hns_roce_cmd_mailbox {int buf; int dma; } ;


 int ENOMEM ;
 struct hns_roce_cmd_mailbox* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dma_pool_alloc (int ,int ,int *) ;
 int kfree (struct hns_roce_cmd_mailbox*) ;
 struct hns_roce_cmd_mailbox* kmalloc (int,int ) ;

struct hns_roce_cmd_mailbox
 *hns_roce_alloc_cmd_mailbox(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_cmd_mailbox *mailbox;

 mailbox = kmalloc(sizeof(*mailbox), GFP_KERNEL);
 if (!mailbox)
  return ERR_PTR(-ENOMEM);

 mailbox->buf = dma_pool_alloc(hr_dev->cmd.pool, GFP_KERNEL,
          &mailbox->dma);
 if (!mailbox->buf) {
  kfree(mailbox);
  return ERR_PTR(-ENOMEM);
 }

 return mailbox;
}
