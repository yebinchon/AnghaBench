
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ fw_cfg_is_mmio ;
 int fw_cfg_reg_ctrl ;
 int iowrite16 (int ,int ) ;
 int iowrite16be (int ,int ) ;

__attribute__((used)) static void fw_cfg_sel_endianness(u16 key)
{
 if (fw_cfg_is_mmio)
  iowrite16be(key, fw_cfg_reg_ctrl);
 else
  iowrite16(key, fw_cfg_reg_ctrl);
}
