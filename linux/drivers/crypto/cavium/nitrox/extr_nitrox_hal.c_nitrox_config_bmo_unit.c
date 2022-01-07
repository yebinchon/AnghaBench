
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nps_slc_buf_thrsh; } ;
union bmo_ctl2 {int value; TYPE_1__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int BMO_CTL2 ;
 int nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,int ) ;

void nitrox_config_bmo_unit(struct nitrox_device *ndev)
{
 union bmo_ctl2 bmo_ctl2;
 u64 offset;


 offset = BMO_CTL2;
 bmo_ctl2.value = nitrox_read_csr(ndev, offset);
 bmo_ctl2.s.nps_slc_buf_thrsh = 0xff;
 nitrox_write_csr(ndev, offset, bmo_ctl2.value);
}
