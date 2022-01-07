
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {unsigned int piobcnt2k; unsigned int piobcnt4k; } ;


 int NUM_VL15_BUFS ;
 int TXCHK_CHG_TYPE_KERN ;
 int qib_chg_pioavailkernel (struct qib_devdata*,unsigned int,int ,int ,int *) ;

__attribute__((used)) static void qib_7322_initvl15_bufs(struct qib_devdata *dd)
{
 unsigned vl15bufs;

 vl15bufs = dd->piobcnt2k + dd->piobcnt4k;
 qib_chg_pioavailkernel(dd, vl15bufs, NUM_VL15_BUFS,
          TXCHK_CHG_TYPE_KERN, ((void*)0));
}
