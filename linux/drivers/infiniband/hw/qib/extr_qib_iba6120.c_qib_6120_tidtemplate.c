
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_devdata {int rcvegrbufsize; unsigned int tidtemplate; scalar_t__ tidinvalid; } ;



__attribute__((used)) static void qib_6120_tidtemplate(struct qib_devdata *dd)
{
 u32 egrsize = dd->rcvegrbufsize;
 if (egrsize == 2048)
  dd->tidtemplate = 1U << 29;
 else if (egrsize == 4096)
  dd->tidtemplate = 2U << 29;
 dd->tidinvalid = 0;
}
