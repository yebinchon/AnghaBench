
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ done; } ;
union lbc_inval_status {TYPE_2__ s; void* value; } ;
struct TYPE_3__ {int cam_inval_start; } ;
union lbc_inval_ctl {void* value; TYPE_1__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int LBC_INVAL_CTL ;
 int LBC_INVAL_STATUS ;
 int MAX_CSR_RETRIES ;
 void* nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,void*) ;
 int udelay (int) ;

void invalidate_lbc(struct nitrox_device *ndev)
{
 union lbc_inval_ctl lbc_ctl;
 union lbc_inval_status lbc_stat;
 int max_retries = MAX_CSR_RETRIES;
 u64 offset;


 offset = LBC_INVAL_CTL;
 lbc_ctl.value = nitrox_read_csr(ndev, offset);
 lbc_ctl.s.cam_inval_start = 1;
 nitrox_write_csr(ndev, offset, lbc_ctl.value);

 offset = LBC_INVAL_STATUS;
 do {
  lbc_stat.value = nitrox_read_csr(ndev, offset);
  if (lbc_stat.s.done)
   break;
  udelay(50);
 } while (max_retries--);
}
