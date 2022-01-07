
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_txreq {scalar_t__ num_desc; } ;
struct sdma_engine {scalar_t__ desc_avail; int head_lock; } ;


 scalar_t__ read_seqretry (int *,unsigned int) ;
 scalar_t__ sdma_descq_freecnt (struct sdma_engine*) ;

__attribute__((used)) static inline unsigned sdma_progress(struct sdma_engine *sde, unsigned seq,
         struct sdma_txreq *tx)
{
 if (read_seqretry(&sde->head_lock, seq)) {
  sde->desc_avail = sdma_descq_freecnt(sde);
  if (tx->num_desc > sde->desc_avail)
   return 0;
  return 1;
 }
 return 0;
}
