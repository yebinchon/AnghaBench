
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {int dummy; } ;


 int LIMA_GP_PERF_CNT_0_LIMIT ;
 int gp_read (int ) ;
 int gp_write (int ,int) ;

__attribute__((used)) static int lima_gp_hard_reset_poll(struct lima_ip *ip)
{
 gp_write(LIMA_GP_PERF_CNT_0_LIMIT, 0xC01A0000);
 return gp_read(LIMA_GP_PERF_CNT_0_LIMIT) == 0xC01A0000;
}
