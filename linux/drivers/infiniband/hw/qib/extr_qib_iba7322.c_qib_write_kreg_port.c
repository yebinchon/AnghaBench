
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u16 ;
struct qib_pportdata {TYPE_2__* cpspec; TYPE_1__* dd; } ;
struct TYPE_4__ {int * kpregbase; } ;
struct TYPE_3__ {int flags; } ;


 int QIB_PRESENT ;
 int writeq (int ,int *) ;

__attribute__((used)) static inline void qib_write_kreg_port(const struct qib_pportdata *ppd,
           const u16 regno, u64 value)
{
 if (ppd->cpspec && ppd->dd && ppd->cpspec->kpregbase &&
     (ppd->dd->flags & QIB_PRESENT))
  writeq(value, &ppd->cpspec->kpregbase[regno]);
}
