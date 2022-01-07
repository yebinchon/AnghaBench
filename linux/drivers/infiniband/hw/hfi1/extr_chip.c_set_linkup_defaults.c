
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {int sm_trap_qp; int sa_qp; } ;



__attribute__((used)) static void set_linkup_defaults(struct hfi1_pportdata *ppd)
{
 ppd->sm_trap_qp = 0x0;
 ppd->sa_qp = 0x1;
}
