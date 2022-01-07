
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int dummy; } ;


 int NPS_PKT_IN_ERR_TYPE_ENA_W1S ;
 int NPS_PKT_IN_RERR_HI_ENA_W1S ;
 int NPS_PKT_IN_RERR_LO_ENA_W1S ;
 int NPS_PKT_SLC_ERR_TYPE_ENA_W1S ;
 int NPS_PKT_SLC_RERR_HI_ENA_W1S ;
 int NPS_PKT_SLC_RERR_LO_ENA_W1S ;
 int nitrox_write_csr (struct nitrox_device*,int ,unsigned long long) ;

__attribute__((used)) static void enable_nps_pkt_interrupts(struct nitrox_device *ndev)
{

 nitrox_write_csr(ndev, NPS_PKT_IN_RERR_LO_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, NPS_PKT_IN_RERR_HI_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, NPS_PKT_IN_ERR_TYPE_ENA_W1S, (~0ULL));

 nitrox_write_csr(ndev, NPS_PKT_SLC_RERR_HI_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, NPS_PKT_SLC_RERR_LO_ENA_W1S, (~0ULL));
 nitrox_write_csr(ndev, NPS_PKT_SLC_ERR_TYPE_ENA_W1S, (~0uLL));
}
