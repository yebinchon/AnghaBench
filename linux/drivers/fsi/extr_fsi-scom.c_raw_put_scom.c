
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct scom_device {int dummy; } ;


 int XSCOM_ADDR_IND_FLAG ;
 int XSCOM_ADDR_INF_FORM1 ;
 int __put_scom (struct scom_device*,int,int,int *) ;
 int put_indirect_scom_form0 (struct scom_device*,int,int,int *) ;
 int put_indirect_scom_form1 (struct scom_device*,int,int,int *) ;

__attribute__((used)) static int raw_put_scom(struct scom_device *scom, uint64_t value,
   uint64_t addr, uint32_t *status)
{
 if (addr & XSCOM_ADDR_IND_FLAG) {
  if (addr & XSCOM_ADDR_INF_FORM1)
   return put_indirect_scom_form1(scom, value, addr, status);
  else
   return put_indirect_scom_form0(scom, value, addr, status);
 } else
  return __put_scom(scom, value, addr, status);
}
