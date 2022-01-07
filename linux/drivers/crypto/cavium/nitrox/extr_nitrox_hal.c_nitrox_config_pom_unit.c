
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int illegal_dport; } ;
union pom_int_ena_w1s {scalar_t__ value; TYPE_1__ s; } ;
struct TYPE_4__ {int se_cores; } ;
struct nitrox_device {TYPE_2__ hw; } ;


 scalar_t__ BIT_ULL (int) ;
 int POM_INT_ENA_W1S ;
 int POM_PERF_CTL ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;

void nitrox_config_pom_unit(struct nitrox_device *ndev)
{
 union pom_int_ena_w1s pom_int;
 int i;


 pom_int.value = 0;
 pom_int.s.illegal_dport = 1;
 nitrox_write_csr(ndev, POM_INT_ENA_W1S, pom_int.value);


 for (i = 0; i < ndev->hw.se_cores; i++)
  nitrox_write_csr(ndev, POM_PERF_CTL, BIT_ULL(i));
}
