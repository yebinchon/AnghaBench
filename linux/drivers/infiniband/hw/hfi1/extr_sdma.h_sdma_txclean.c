
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_txreq {scalar_t__ num_desc; } ;
struct hfi1_devdata {int dummy; } ;


 int __sdma_txclean (struct hfi1_devdata*,struct sdma_txreq*) ;

__attribute__((used)) static inline void sdma_txclean(struct hfi1_devdata *dd, struct sdma_txreq *tx)
{
 if (tx->num_desc)
  __sdma_txclean(dd, tx);
}
