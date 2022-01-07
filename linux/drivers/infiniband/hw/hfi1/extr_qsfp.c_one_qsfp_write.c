
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int QSFP_WAIT ;
 int acquire_chip_resource (struct hfi1_devdata*,int ,int ) ;
 int qsfp_resource (struct hfi1_devdata*) ;
 int qsfp_write (struct hfi1_pportdata*,int ,int,void*,int) ;
 int release_chip_resource (struct hfi1_devdata*,int ) ;

int one_qsfp_write(struct hfi1_pportdata *ppd, u32 target, int addr, void *bp,
     int len)
{
 struct hfi1_devdata *dd = ppd->dd;
 u32 resource = qsfp_resource(dd);
 int ret;

 ret = acquire_chip_resource(dd, resource, QSFP_WAIT);
 if (ret)
  return ret;
 ret = qsfp_write(ppd, target, addr, bp, len);
 release_chip_resource(dd, resource);

 return ret;
}
