
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compcode; } ;
union zip_zres_s {TYPE_1__ s; } ;


 int ETIMEDOUT ;
 int pr_err (char*) ;
 int rmb () ;
 int udelay (int) ;

__attribute__((used)) static inline int zip_poll_result(union zip_zres_s *result)
{
 int retries = 1000;

 while (!result->s.compcode) {
  if (!--retries) {
   pr_err("ZIP ERR: request timed out");
   return -ETIMEDOUT;
  }
  udelay(10);




  rmb();
 }
 return 0;
}
