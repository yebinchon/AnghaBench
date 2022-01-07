
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hfi1_pportdata {int local_tx_rate; int link_speed_enabled; int link_width_enabled; int port_crc_mode_enabled; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {scalar_t__ dc8051_ver; int minrev; TYPE_1__* pcidev; int vl15_init; int vcu; int vau; } ;
struct TYPE_2__ {int device; } ;


 int EXT_CFG_LCB_RESET_SUPPORTED_SHIFT ;
 int HCMD_SUCCESS ;
 int HOST_INTERFACE_VERSION ;
 scalar_t__ LOOPBACK_SERDES ;
 int LOOPBACK_SERDES_CONFIG_BIT_MASK_SHIFT ;
 int OPA_LINK_SPEED_12_5G ;
 int OPA_LINK_SPEED_25G ;
 scalar_t__ dc8051_ver (int,int,int ) ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;
 int fabric_serdes_reset (struct hfi1_devdata*) ;
 scalar_t__ loopback ;
 int opa_to_vc_link_widths (int ) ;
 int read_tx_settings (struct hfi1_devdata*,int*,int*,int*,int*) ;
 int write_host_interface_version (struct hfi1_devdata*,int ) ;
 int write_local_device_id (struct hfi1_devdata*,int ,int ) ;
 int write_tx_settings (struct hfi1_devdata*,int,int,int,int) ;
 int write_vc_local_fabric (struct hfi1_devdata*,int ,int,int ,int ,int ) ;
 int write_vc_local_link_mode (struct hfi1_devdata*,int,int ,int ) ;
 int write_vc_local_phy (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static int set_local_link_attributes(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;
 u8 enable_lane_tx;
 u8 tx_polarity_inversion;
 u8 rx_polarity_inversion;
 int ret;
 u32 misc_bits = 0;

 fabric_serdes_reset(dd);


 ret = read_tx_settings(dd, &enable_lane_tx, &tx_polarity_inversion,
          &rx_polarity_inversion, &ppd->local_tx_rate);
 if (ret)
  goto set_local_link_attributes_fail;

 if (dd->dc8051_ver < dc8051_ver(0, 20, 0)) {

  if (ppd->link_speed_enabled & OPA_LINK_SPEED_25G)
   ppd->local_tx_rate = 1;
  else
   ppd->local_tx_rate = 0;
 } else {

  ppd->local_tx_rate = 0;
  if (ppd->link_speed_enabled & OPA_LINK_SPEED_25G)
   ppd->local_tx_rate |= 2;
  if (ppd->link_speed_enabled & OPA_LINK_SPEED_12_5G)
   ppd->local_tx_rate |= 1;
 }

 enable_lane_tx = 0xF;
 ret = write_tx_settings(dd, enable_lane_tx, tx_polarity_inversion,
    rx_polarity_inversion, ppd->local_tx_rate);
 if (ret != HCMD_SUCCESS)
  goto set_local_link_attributes_fail;

 ret = write_host_interface_version(dd, HOST_INTERFACE_VERSION);
 if (ret != HCMD_SUCCESS) {
  dd_dev_err(dd,
      "Failed to set host interface version, return 0x%x\n",
      ret);
  goto set_local_link_attributes_fail;
 }




 ret = write_vc_local_phy(dd,
     0 ,
     1 );
 if (ret != HCMD_SUCCESS)
  goto set_local_link_attributes_fail;


 ret = write_vc_local_fabric(dd, dd->vau, 1, dd->vcu, dd->vl15_init,
        ppd->port_crc_mode_enabled);
 if (ret != HCMD_SUCCESS)
  goto set_local_link_attributes_fail;





 if (loopback == LOOPBACK_SERDES)
  misc_bits |= 1 << LOOPBACK_SERDES_CONFIG_BIT_MASK_SHIFT;






 if (dd->dc8051_ver >= dc8051_ver(1, 25, 0))
  misc_bits |= 1 << EXT_CFG_LCB_RESET_SUPPORTED_SHIFT;

 ret = write_vc_local_link_mode(dd, misc_bits, 0,
           opa_to_vc_link_widths(
      ppd->link_width_enabled));
 if (ret != HCMD_SUCCESS)
  goto set_local_link_attributes_fail;


 ret = write_local_device_id(dd, dd->pcidev->device, dd->minrev);
 if (ret == HCMD_SUCCESS)
  return 0;

set_local_link_attributes_fail:
 dd_dev_err(dd,
     "Failed to set local link attributes, return 0x%x\n",
     ret);
 return ret;
}
