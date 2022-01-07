
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int AQM_DBELL_OVF_HI_ENA_W1S ;
 int AQM_DBELL_OVF_LO_ENA_W1S ;
 int AQM_DMA_RD_ERR_HI_ENA_W1S ;
 int AQM_DMA_RD_ERR_LO_ENA_W1S ;
 int AQM_EXEC_ERR_HI_ENA_W1S ;
 int AQM_EXEC_ERR_LO_ENA_W1S ;
 int AQM_EXEC_NA_HI_ENA_W1S ;
 int AQM_EXEC_NA_LO_ENA_W1S ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;

__attribute__((used)) static void enable_aqm_interrupts(struct nitrox_device *ndev)
{

 nitrox_write_csr(ndev, AQM_DBELL_OVF_LO_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_DBELL_OVF_HI_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_DMA_RD_ERR_LO_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_DMA_RD_ERR_HI_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_EXEC_NA_LO_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_EXEC_NA_HI_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_EXEC_ERR_LO_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, AQM_EXEC_ERR_HI_ENA_W1S, (~0ULL));
}
