
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_rd_err; int over_fetch_err; int cam_inval_abort; int cam_hard_err; } ;
union lbc_int_ena_w1s {unsigned long long value; TYPE_1__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int LBC_ELM_VF1_64_INT_ENA_W1S ;
 int LBC_ELM_VF65_128_INT_ENA_W1S ;
 int LBC_INT_ENA_W1S ;
 int LBC_PLM_VF1_64_INT_ENA_W1S ;
 int LBC_PLM_VF65_128_INT_ENA_W1S ;
 int invalidate_lbc (struct nitrox_device*) ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;

void nitrox_config_lbc_unit(struct nitrox_device *ndev)
{
 union lbc_int_ena_w1s lbc_int_ena;
 u64 offset;

 invalidate_lbc(ndev);


 offset = LBC_INT_ENA_W1S;
 lbc_int_ena.value = 0;
 lbc_int_ena.s.dma_rd_err = 1;
 lbc_int_ena.s.over_fetch_err = 1;
 lbc_int_ena.s.cam_inval_abort = 1;
 lbc_int_ena.s.cam_hard_err = 1;
 nitrox_write_csr(ndev, offset, lbc_int_ena.value);

 offset = LBC_PLM_VF1_64_INT_ENA_W1S;
 nitrox_write_csr(ndev, offset, (~0ULL));
 offset = LBC_PLM_VF65_128_INT_ENA_W1S;
 nitrox_write_csr(ndev, offset, (~0ULL));

 offset = LBC_ELM_VF1_64_INT_ENA_W1S;
 nitrox_write_csr(ndev, offset, (~0ULL));
 offset = LBC_ELM_VF65_128_INT_ENA_W1S;
 nitrox_write_csr(ndev, offset, (~0ULL));
}
