
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int iser_err_comp (struct ib_wc*,char*) ;

void iser_reg_comp(struct ib_cq *cq, struct ib_wc *wc)
{
 iser_err_comp(wc, "memreg");
}
