
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_reg_resources {int * sig_mr; int * mr; } ;
struct iser_fr_desc {struct iser_reg_resources rsc; } ;


 int ib_dereg_mr (int *) ;
 int kfree (struct iser_fr_desc*) ;

__attribute__((used)) static void iser_destroy_fastreg_desc(struct iser_fr_desc *desc)
{
 struct iser_reg_resources *res = &desc->rsc;

 ib_dereg_mr(res->mr);
 if (res->sig_mr) {
  ib_dereg_mr(res->sig_mr);
  res->sig_mr = ((void*)0);
 }
 kfree(desc);
}
