
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {size_t hfi1_id; } ;


 int ENABLE_SPICO_SMASK ;
 int MISC_CFG_FW_CTRL ;
 int SBUS_MASTER_BROADCAST ;
 int SPICO_FABRIC ;
 int SPICO_SBUS ;
 int WRITE_SBUS_RECEIVER ;
 int dd_dev_info (struct hfi1_devdata*,char*,char*,char*) ;
 int * fabric_serdes_broadcast ;
 int is_ax (struct hfi1_devdata*) ;
 int sbus_request (struct hfi1_devdata*,int ,int,int ,int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static void turn_off_spicos(struct hfi1_devdata *dd, int flags)
{

 if (!is_ax(dd))
  return;

 dd_dev_info(dd, "Turning off spicos:%s%s\n",
      flags & SPICO_SBUS ? " SBus" : "",
      flags & SPICO_FABRIC ? " fabric" : "");

 write_csr(dd, MISC_CFG_FW_CTRL, ENABLE_SPICO_SMASK);

 if (flags & SPICO_SBUS)
  sbus_request(dd, SBUS_MASTER_BROADCAST, 0x01,
        WRITE_SBUS_RECEIVER, 0x00000040);


 if (flags & SPICO_FABRIC)
  sbus_request(dd, fabric_serdes_broadcast[dd->hfi1_id],
        0x07, WRITE_SBUS_RECEIVER, 0x00000000);
 write_csr(dd, MISC_CFG_FW_CTRL, 0);
}
