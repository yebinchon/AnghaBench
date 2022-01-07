
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enb; int z; int rh; } ;
union nps_pkt_slc_ctl {TYPE_1__ s; scalar_t__ value; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int MAX_CSR_RETRIES ;
 int NPS_PKT_SLC_CTLX (int) ;
 scalar_t__ nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;
 int udelay (int) ;

void enable_pkt_solicit_port(struct nitrox_device *ndev, int port)
{
 union nps_pkt_slc_ctl pkt_slc_ctl;
 int max_retries = MAX_CSR_RETRIES;
 u64 offset;

 offset = NPS_PKT_SLC_CTLX(port);
 pkt_slc_ctl.value = 0;
 pkt_slc_ctl.s.enb = 1;




 pkt_slc_ctl.s.z = 1;

 pkt_slc_ctl.s.rh = 1;
 nitrox_write_csr(ndev, offset, pkt_slc_ctl.value);


 do {
  pkt_slc_ctl.value = nitrox_read_csr(ndev, offset);
  if (pkt_slc_ctl.s.enb)
   break;
  udelay(50);
 } while (max_retries--);
}
