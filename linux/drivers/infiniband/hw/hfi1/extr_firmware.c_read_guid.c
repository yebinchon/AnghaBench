
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ base_guid; } ;


 int CCE_DC_CTRL ;
 int DC_DC8051_CFG_LOCAL_GUID ;
 int dd_dev_info (struct hfi1_devdata*,char*,unsigned long long) ;
 scalar_t__ read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

void read_guid(struct hfi1_devdata *dd)
{

 write_csr(dd, CCE_DC_CTRL, 0);
 (void)read_csr(dd, CCE_DC_CTRL);

 dd->base_guid = read_csr(dd, DC_DC8051_CFG_LOCAL_GUID);
 dd_dev_info(dd, "GUID %llx",
      (unsigned long long)dd->base_guid);
}
