
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnxt_qplib_rcfw_sbuf {int sb; int dma_addr; int size; } ;
struct bnxt_qplib_rcfw {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_ATOMIC ;
 int dma_alloc_coherent (int *,int ,int *,int ) ;
 int kfree (struct bnxt_qplib_rcfw_sbuf*) ;
 struct bnxt_qplib_rcfw_sbuf* kzalloc (int,int ) ;

struct bnxt_qplib_rcfw_sbuf *bnxt_qplib_rcfw_alloc_sbuf(
  struct bnxt_qplib_rcfw *rcfw,
  u32 size)
{
 struct bnxt_qplib_rcfw_sbuf *sbuf;

 sbuf = kzalloc(sizeof(*sbuf), GFP_ATOMIC);
 if (!sbuf)
  return ((void*)0);

 sbuf->size = size;
 sbuf->sb = dma_alloc_coherent(&rcfw->pdev->dev, sbuf->size,
          &sbuf->dma_addr, GFP_ATOMIC);
 if (!sbuf->sb)
  goto bail;

 return sbuf;
bail:
 kfree(sbuf);
 return ((void*)0);
}
