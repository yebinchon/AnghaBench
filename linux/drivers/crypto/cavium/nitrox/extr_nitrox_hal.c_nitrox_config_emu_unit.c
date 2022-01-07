
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int se_wd; } ;
union emu_wd_int_ena_w1s {scalar_t__ value; TYPE_1__ s; } ;
struct TYPE_4__ {int se_ge; int ae_ge; } ;
union emu_ge_int_ena_w1s {scalar_t__ value; TYPE_2__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int EMU_GE_INT_ENA_W1SX (int) ;
 int EMU_WD_INT_ENA_W1SX (int) ;
 int NR_CLUSTERS ;
 int emu_enable_cores (struct nitrox_device*) ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;

void nitrox_config_emu_unit(struct nitrox_device *ndev)
{
 union emu_wd_int_ena_w1s emu_wd_int;
 union emu_ge_int_ena_w1s emu_ge_int;
 u64 offset;
 int i;


 emu_enable_cores(ndev);


 emu_ge_int.value = 0;
 emu_ge_int.s.se_ge = 0xffff;
 emu_ge_int.s.ae_ge = 0xfffff;
 emu_wd_int.value = 0;
 emu_wd_int.s.se_wd = 1;

 for (i = 0; i < NR_CLUSTERS; i++) {
  offset = EMU_WD_INT_ENA_W1SX(i);
  nitrox_write_csr(ndev, offset, emu_wd_int.value);
  offset = EMU_GE_INT_ENA_W1SX(i);
  nitrox_write_csr(ndev, offset, emu_ge_int.value);
 }
}
