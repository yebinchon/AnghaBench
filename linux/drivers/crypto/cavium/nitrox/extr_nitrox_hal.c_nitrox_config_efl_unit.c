
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len_ovr; int d_left; int epci_decode_err; } ;
union efl_core_int_ena_w1s {unsigned long long value; TYPE_1__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int EFL_CORE_INT_ENA_W1SX (int) ;
 int EFL_CORE_VF_ERR_INT0_ENA_W1SX (int) ;
 int EFL_CORE_VF_ERR_INT1_ENA_W1SX (int) ;
 int NR_CLUSTERS ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;

void nitrox_config_efl_unit(struct nitrox_device *ndev)
{
 int i;

 for (i = 0; i < NR_CLUSTERS; i++) {
  union efl_core_int_ena_w1s efl_core_int;
  u64 offset;


  offset = EFL_CORE_INT_ENA_W1SX(i);
  efl_core_int.value = 0;
  efl_core_int.s.len_ovr = 1;
  efl_core_int.s.d_left = 1;
  efl_core_int.s.epci_decode_err = 1;
  nitrox_write_csr(ndev, offset, efl_core_int.value);

  offset = EFL_CORE_VF_ERR_INT0_ENA_W1SX(i);
  nitrox_write_csr(ndev, offset, (~0ULL));
  offset = EFL_CORE_VF_ERR_INT1_ENA_W1SX(i);
  nitrox_write_csr(ndev, offset, (~0ULL));
 }
}
