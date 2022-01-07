
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is64b; int enb; } ;
union nps_pkt_in_instr_ctl {TYPE_1__ s; void* value; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int MAX_CSR_RETRIES ;
 int NPS_PKT_IN_INSTR_CTLX (int) ;
 void* nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,void*) ;
 int udelay (int) ;

void enable_pkt_input_ring(struct nitrox_device *ndev, int ring)
{
 union nps_pkt_in_instr_ctl pkt_in_ctl;
 int max_retries = MAX_CSR_RETRIES;
 u64 offset;


 offset = NPS_PKT_IN_INSTR_CTLX(ring);
 pkt_in_ctl.value = nitrox_read_csr(ndev, offset);
 pkt_in_ctl.s.is64b = 1;
 pkt_in_ctl.s.enb = 1;
 nitrox_write_csr(ndev, offset, pkt_in_ctl.value);


 do {
  pkt_in_ctl.value = nitrox_read_csr(ndev, offset);
  if (pkt_in_ctl.s.enb)
   break;
  udelay(50);
 } while (max_retries--);
}
