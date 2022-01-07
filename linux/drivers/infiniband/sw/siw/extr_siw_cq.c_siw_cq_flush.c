
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cq {int dummy; } ;
struct ib_wc {int dummy; } ;


 scalar_t__ siw_reap_cqe (struct siw_cq*,struct ib_wc*) ;

void siw_cq_flush(struct siw_cq *cq)
{
 struct ib_wc wc;

 while (siw_reap_cqe(cq, &wc))
  ;
}
