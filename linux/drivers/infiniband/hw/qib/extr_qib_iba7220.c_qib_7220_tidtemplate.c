
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int rcvegrbufsize; scalar_t__ tidinvalid; int tidtemplate; } ;


 int IBA7220_TID_SZ_2K ;
 int IBA7220_TID_SZ_4K ;

__attribute__((used)) static void qib_7220_tidtemplate(struct qib_devdata *dd)
{
 if (dd->rcvegrbufsize == 2048)
  dd->tidtemplate = IBA7220_TID_SZ_2K;
 else if (dd->rcvegrbufsize == 4096)
  dd->tidtemplate = IBA7220_TID_SZ_4K;
 dd->tidinvalid = 0;
}
