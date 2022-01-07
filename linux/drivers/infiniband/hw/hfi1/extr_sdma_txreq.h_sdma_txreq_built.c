
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_txreq {int num_desc; } ;



__attribute__((used)) static inline int sdma_txreq_built(struct sdma_txreq *tx)
{
 return tx->num_desc;
}
