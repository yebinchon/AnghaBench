
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fw_cfg_dev_base ;
 scalar_t__ fw_cfg_is_mmio ;
 int fw_cfg_p_base ;
 int fw_cfg_p_size ;
 int ioport_unmap (int ) ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void fw_cfg_io_cleanup(void)
{
 if (fw_cfg_is_mmio) {
  iounmap(fw_cfg_dev_base);
  release_mem_region(fw_cfg_p_base, fw_cfg_p_size);
 } else {
  ioport_unmap(fw_cfg_dev_base);
  release_region(fw_cfg_p_base, fw_cfg_p_size);
 }
}
