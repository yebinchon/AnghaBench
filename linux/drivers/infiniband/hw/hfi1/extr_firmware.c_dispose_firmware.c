
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FW_EMPTY ;
 scalar_t__ FW_ERR ;
 int dispose_one_firmware (int *) ;
 int fw_8051 ;
 int fw_fabric ;
 int fw_pcie ;
 int fw_sbus ;
 scalar_t__ fw_state ;

void dispose_firmware(void)
{
 dispose_one_firmware(&fw_8051);
 dispose_one_firmware(&fw_fabric);
 dispose_one_firmware(&fw_pcie);
 dispose_one_firmware(&fw_sbus);


 if (fw_state != FW_ERR)
  fw_state = FW_EMPTY;
}
