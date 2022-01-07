
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timet; } ;
union nps_pkt_slc_int_levels {scalar_t__ value; TYPE_1__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int NPS_PKT_SLC_INT_LEVELSX (int) ;
 int enable_pkt_solicit_port (struct nitrox_device*,int) ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;
 int reset_pkt_solicit_port (struct nitrox_device*,int) ;

__attribute__((used)) static void config_pkt_solicit_port(struct nitrox_device *ndev, int port)
{
 union nps_pkt_slc_int_levels pkt_slc_int;
 u64 offset;

 reset_pkt_solicit_port(ndev, port);


 offset = NPS_PKT_SLC_INT_LEVELSX(port);
 pkt_slc_int.value = 0;

 pkt_slc_int.s.timet = 0x3fffff;
 nitrox_write_csr(ndev, offset, pkt_slc_int.value);


 enable_pkt_solicit_port(ndev, port);
}
