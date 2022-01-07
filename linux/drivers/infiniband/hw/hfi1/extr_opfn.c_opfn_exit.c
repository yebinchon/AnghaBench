
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int *) ;
 int * opfn_wq ;

void opfn_exit(void)
{
 if (opfn_wq) {
  destroy_workqueue(opfn_wq);
  opfn_wq = ((void*)0);
 }
}
