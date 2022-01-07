
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hfi1_pportdata {scalar_t__ port_type; TYPE_1__* dd; } ;
struct TYPE_2__ {int hfi1_id; } ;


 int EIO ;
 scalar_t__ PORT_TYPE_QSFP ;
 int one_qsfp_read (struct hfi1_pportdata*,int ,int,int *,int) ;
 int qsfp_mod_present (struct hfi1_pportdata*) ;

__attribute__((used)) static int test_qsfp_read(struct hfi1_pportdata *ppd)
{
 int ret;
 u8 status;





 if (ppd->port_type != PORT_TYPE_QSFP || !qsfp_mod_present(ppd))
  return 0;


 ret = one_qsfp_read(ppd, ppd->dd->hfi1_id, 2, &status, 1);
 if (ret < 0)
  return ret;
 if (ret != 1)
  return -EIO;

 return 0;
}
