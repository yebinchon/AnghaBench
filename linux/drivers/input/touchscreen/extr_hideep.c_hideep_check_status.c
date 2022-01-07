
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hideep_ts {int dummy; } ;


 int ETIMEDOUT ;
 int HIDEEP_FLASH_STA ;
 int hideep_pgm_r_reg (struct hideep_ts*,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hideep_check_status(struct hideep_ts *ts)
{
 int time_out = 100;
 int status;
 int error;

 while (time_out--) {
  error = hideep_pgm_r_reg(ts, HIDEEP_FLASH_STA, &status);
  if (!error && status)
   return 0;

  usleep_range(1000, 1100);
 }

 return -ETIMEDOUT;
}
