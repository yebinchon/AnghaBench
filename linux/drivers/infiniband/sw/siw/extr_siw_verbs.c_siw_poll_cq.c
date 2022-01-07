
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_cq {int dummy; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int siw_reap_cqe (struct siw_cq*,struct ib_wc*) ;
 struct siw_cq* to_siw_cq (struct ib_cq*) ;

int siw_poll_cq(struct ib_cq *base_cq, int num_cqe, struct ib_wc *wc)
{
 struct siw_cq *cq = to_siw_cq(base_cq);
 int i;

 for (i = 0; i < num_cqe; i++) {
  if (!siw_reap_cqe(cq, wc))
   break;
  wc++;
 }
 return i;
}
