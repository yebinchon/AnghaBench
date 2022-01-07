
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int device; } ;
struct hns_roce_ucontext {int uar; } ;


 int hns_roce_uar_free (int ,int *) ;
 int to_hr_dev (int ) ;
 struct hns_roce_ucontext* to_hr_ucontext (struct ib_ucontext*) ;

__attribute__((used)) static void hns_roce_dealloc_ucontext(struct ib_ucontext *ibcontext)
{
 struct hns_roce_ucontext *context = to_hr_ucontext(ibcontext);

 hns_roce_uar_free(to_hr_dev(ibcontext->device), &context->uar);
}
