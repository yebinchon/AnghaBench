
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enable; } ;
union emu_se_enable {scalar_t__ value; TYPE_2__ s; } ;
struct TYPE_3__ {int enable; } ;
union emu_ae_enable {scalar_t__ value; TYPE_1__ s; } ;
struct nitrox_device {int dummy; } ;


 int EMU_AE_ENABLEX (int) ;
 int EMU_SE_ENABLEX (int) ;
 int NR_CLUSTERS ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;

__attribute__((used)) static void emu_enable_cores(struct nitrox_device *ndev)
{
 union emu_se_enable emu_se;
 union emu_ae_enable emu_ae;
 int i;


 emu_ae.value = 0;
 emu_ae.s.enable = 0xfffff;


 emu_se.value = 0;
 emu_se.s.enable = 0xffff;


 for (i = 0; i < NR_CLUSTERS; i++) {
  nitrox_write_csr(ndev, EMU_AE_ENABLEX(i), emu_ae.value);
  nitrox_write_csr(ndev, EMU_SE_ENABLEX(i), emu_se.value);
 }
}
