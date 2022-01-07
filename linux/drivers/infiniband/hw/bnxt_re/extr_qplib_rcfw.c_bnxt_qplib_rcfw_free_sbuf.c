
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt_qplib_rcfw_sbuf {int dma_addr; scalar_t__ sb; int size; } ;
struct bnxt_qplib_rcfw {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (struct bnxt_qplib_rcfw_sbuf*) ;

void bnxt_qplib_rcfw_free_sbuf(struct bnxt_qplib_rcfw *rcfw,
          struct bnxt_qplib_rcfw_sbuf *sbuf)
{
 if (sbuf->sb)
  dma_free_coherent(&rcfw->pdev->dev, sbuf->size,
      sbuf->sb, sbuf->dma_addr);
 kfree(sbuf);
}
