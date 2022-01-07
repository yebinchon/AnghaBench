
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_pgtable_cfg {int quirks; } ;


 int CONFIG_PHYS_ADDR_T_64BIT ;
 int IO_PGTABLE_QUIRK_ARM_MTK_EXT ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static bool arm_v7s_is_mtk_enabled(struct io_pgtable_cfg *cfg)
{
 return IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT) &&
  (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT);
}
