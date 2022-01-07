
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdma_txreq {int dummy; } ;


 int sdma_txinit_ahg (struct sdma_txreq*,int ,int ,int ,int ,int *,int ,void (*) (struct sdma_txreq*,int)) ;

__attribute__((used)) static inline int sdma_txinit(
 struct sdma_txreq *tx,
 u16 flags,
 u16 tlen,
 void (*cb)(struct sdma_txreq *, int))
{
 return sdma_txinit_ahg(tx, flags, tlen, 0, 0, ((void*)0), 0, cb);
}
