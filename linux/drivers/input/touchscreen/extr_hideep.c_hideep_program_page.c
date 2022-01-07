
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hideep_ts {int dummy; } ;
typedef int __be32 ;


 int EBUSY ;
 int HIDEEP_FLASH_PIO_SIG ;
 int HIDEEP_NVM_PAGE_SIZE ;
 int HIDEEP_PERASE ;
 int HIDEEP_WRONLY ;
 int SET_FLASH_HWCONTROL () ;
 int SET_FLASH_PIO (int) ;
 int SET_PIO_SIG (int,int) ;
 int be32_to_cpu (int const) ;
 int hideep_check_status (struct hideep_ts*) ;
 int hideep_pgm_w_mem (struct hideep_ts*,int,int const*,size_t) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hideep_program_page(struct hideep_ts *ts, u32 addr,
          const __be32 *ucode, size_t xfer_count)
{
 u32 val;
 int error;

 error = hideep_check_status(ts);
 if (error)
  return -EBUSY;

 addr &= ~(HIDEEP_NVM_PAGE_SIZE - 1);

 SET_FLASH_PIO(0);
 SET_FLASH_PIO(1);


 SET_PIO_SIG(HIDEEP_PERASE | addr, 0xFFFFFFFF);

 SET_FLASH_PIO(0);

 error = hideep_check_status(ts);
 if (error)
  return -EBUSY;


 SET_FLASH_PIO(1);

 val = be32_to_cpu(ucode[0]);
 SET_PIO_SIG(HIDEEP_WRONLY | addr, val);

 hideep_pgm_w_mem(ts, HIDEEP_FLASH_PIO_SIG | HIDEEP_WRONLY,
    ucode, xfer_count);

 val = be32_to_cpu(ucode[xfer_count - 1]);
 SET_PIO_SIG(124, val);

 SET_FLASH_PIO(0);

 usleep_range(1000, 1100);

 error = hideep_check_status(ts);
 if (error)
  return -EBUSY;

 SET_FLASH_HWCONTROL();

 return 0;
}
