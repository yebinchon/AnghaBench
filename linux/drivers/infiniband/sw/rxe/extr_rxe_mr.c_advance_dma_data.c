
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_sge {int length; } ;
struct rxe_dma_info {size_t cur_sge; int sge_offset; int resid; size_t num_sge; struct rxe_sge* sge; } ;


 int ENOSPC ;

int advance_dma_data(struct rxe_dma_info *dma, unsigned int length)
{
 struct rxe_sge *sge = &dma->sge[dma->cur_sge];
 int offset = dma->sge_offset;
 int resid = dma->resid;

 while (length) {
  unsigned int bytes;

  if (offset >= sge->length) {
   sge++;
   dma->cur_sge++;
   offset = 0;
   if (dma->cur_sge >= dma->num_sge)
    return -ENOSPC;
  }

  bytes = length;

  if (bytes > sge->length - offset)
   bytes = sge->length - offset;

  offset += bytes;
  resid -= bytes;
  length -= bytes;
 }

 dma->sge_offset = offset;
 dma->resid = resid;

 return 0;
}
