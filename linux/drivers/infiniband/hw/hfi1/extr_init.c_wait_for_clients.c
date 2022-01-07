
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int user_comp; int user_refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void wait_for_clients(struct hfi1_devdata *dd)
{




 if (atomic_dec_and_test(&dd->user_refcount))
  complete(&dd->user_comp);

 wait_for_completion(&dd->user_comp);
}
