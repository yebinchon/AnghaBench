
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enb; } ;
union nps_pkt_slc_ctl {TYPE_1__ s; void* value; } ;
union nps_pkt_slc_cnts {void* value; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int MAX_CSR_RETRIES ;
 int NPS_PKT_SLC_CNTSX (int) ;
 int NPS_PKT_SLC_CTLX (int) ;
 void* nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,void*) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void reset_pkt_solicit_port(struct nitrox_device *ndev, int port)
{
 union nps_pkt_slc_ctl pkt_slc_ctl;
 union nps_pkt_slc_cnts pkt_slc_cnts;
 int max_retries = MAX_CSR_RETRIES;
 u64 offset;


 offset = NPS_PKT_SLC_CTLX(port);
 pkt_slc_ctl.value = nitrox_read_csr(ndev, offset);
 pkt_slc_ctl.s.enb = 0;
 nitrox_write_csr(ndev, offset, pkt_slc_ctl.value);


 usleep_range(100, 150);

 do {
  pkt_slc_ctl.value = nitrox_read_csr(ndev, offset);
  if (!pkt_slc_ctl.s.enb)
   break;
  udelay(50);
 } while (max_retries--);


 offset = NPS_PKT_SLC_CNTSX(port);
 pkt_slc_cnts.value = nitrox_read_csr(ndev, offset);
 nitrox_write_csr(ndev, offset, pkt_slc_cnts.value);
 usleep_range(50, 100);
}
