
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int * piobase; int * rcvarray_wc; int * kregbase2; int * kregbase1; int flags; } ;


 int HFI1_PRESENT ;
 int iounmap (int *) ;

void hfi1_pcie_ddcleanup(struct hfi1_devdata *dd)
{
 dd->flags &= ~HFI1_PRESENT;
 if (dd->kregbase1)
  iounmap(dd->kregbase1);
 dd->kregbase1 = ((void*)0);
 if (dd->kregbase2)
  iounmap(dd->kregbase2);
 dd->kregbase2 = ((void*)0);
 if (dd->rcvarray_wc)
  iounmap(dd->rcvarray_wc);
 dd->rcvarray_wc = ((void*)0);
 if (dd->piobase)
  iounmap(dd->piobase);
 dd->piobase = ((void*)0);
}
