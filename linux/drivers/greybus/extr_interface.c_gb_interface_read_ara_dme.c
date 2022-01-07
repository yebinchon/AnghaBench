
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gb_interface {scalar_t__ ddbl1_manufacturer_id; int vendor_id; int product_id; int serial_number; int dev; } ;


 int DME_TOSHIBA_GMP_PID ;
 int DME_TOSHIBA_GMP_SN0 ;
 int DME_TOSHIBA_GMP_SN1 ;
 int DME_TOSHIBA_GMP_VID ;
 int ENODEV ;
 scalar_t__ TOSHIBA_DMID ;
 int dev_err (int *,char*,scalar_t__) ;
 int gb_interface_dme_attr_get (struct gb_interface*,int ,int*) ;

__attribute__((used)) static int gb_interface_read_ara_dme(struct gb_interface *intf)
{
 u32 sn0, sn1;
 int ret;





 if (intf->ddbl1_manufacturer_id != TOSHIBA_DMID) {
  dev_err(&intf->dev, "unknown manufacturer %08x\n",
   intf->ddbl1_manufacturer_id);
  return -ENODEV;
 }

 ret = gb_interface_dme_attr_get(intf, DME_TOSHIBA_GMP_VID,
     &intf->vendor_id);
 if (ret)
  return ret;

 ret = gb_interface_dme_attr_get(intf, DME_TOSHIBA_GMP_PID,
     &intf->product_id);
 if (ret)
  return ret;

 ret = gb_interface_dme_attr_get(intf, DME_TOSHIBA_GMP_SN0, &sn0);
 if (ret)
  return ret;

 ret = gb_interface_dme_attr_get(intf, DME_TOSHIBA_GMP_SN1, &sn1);
 if (ret)
  return ret;

 intf->serial_number = (u64)sn1 << 32 | sn0;

 return 0;
}
