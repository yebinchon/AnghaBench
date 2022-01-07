
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_mailbox {int buf; int dma; } ;
struct TYPE_2__ {int pool; } ;
struct mthca_dev {TYPE_1__ cmd; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct mthca_mailbox* ERR_PTR (int ) ;
 int dma_pool_alloc (int ,int ,int *) ;
 int kfree (struct mthca_mailbox*) ;
 struct mthca_mailbox* kmalloc (int,int ) ;

struct mthca_mailbox *mthca_alloc_mailbox(struct mthca_dev *dev,
       gfp_t gfp_mask)
{
 struct mthca_mailbox *mailbox;

 mailbox = kmalloc(sizeof *mailbox, gfp_mask);
 if (!mailbox)
  return ERR_PTR(-ENOMEM);

 mailbox->buf = dma_pool_alloc(dev->cmd.pool, gfp_mask, &mailbox->dma);
 if (!mailbox->buf) {
  kfree(mailbox);
  return ERR_PTR(-ENOMEM);
 }

 return mailbox;
}
