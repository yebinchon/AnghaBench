
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_cvp_conf {int dummy; } ;


 int ETIMEDOUT ;
 int VSE_CVP_STATUS ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int altera_cvp_wait_status(struct altera_cvp_conf *conf, u32 status_mask,
      u32 status_val, int timeout_us)
{
 unsigned int retries;
 u32 val;

 retries = timeout_us / 10;
 if (timeout_us % 10)
  retries++;

 do {
  altera_read_config_dword(conf, VSE_CVP_STATUS, &val);
  if ((val & status_mask) == status_val)
   return 0;


  usleep_range(10, 11);
 } while (--retries);

 return -ETIMEDOUT;
}
