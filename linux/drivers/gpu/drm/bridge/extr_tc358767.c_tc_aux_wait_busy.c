
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_data {int dummy; } ;


 int AUX_BUSY ;
 int DP0_AUXSTATUS ;
 int tc_poll_timeout (struct tc_data*,int ,int ,int ,int,int) ;

__attribute__((used)) static int tc_aux_wait_busy(struct tc_data *tc)
{
 return tc_poll_timeout(tc, DP0_AUXSTATUS, AUX_BUSY, 0, 1000, 100000);
}
