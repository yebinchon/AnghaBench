
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {int dummy; } ;


 int LIMA_PP_PERF_CNT_0_LIMIT ;
 int pp_read (int ) ;
 int pp_write (int ,int) ;

__attribute__((used)) static int lima_pp_hard_reset_poll(struct lima_ip *ip)
{
 pp_write(LIMA_PP_PERF_CNT_0_LIMIT, 0xC01A0000);
 return pp_read(LIMA_PP_PERF_CNT_0_LIMIT) == 0xC01A0000;
}
