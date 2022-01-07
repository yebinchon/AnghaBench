
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {int dummy; } ;


 int LIMA_PP_INT_RAWSTAT ;
 int LIMA_PP_IRQ_RESET_COMPLETED ;
 int LIMA_PP_STATUS ;
 int LIMA_PP_STATUS_RENDERING_ACTIVE ;
 int pp_read (int ) ;

__attribute__((used)) static int lima_pp_soft_reset_poll(struct lima_ip *ip)
{
 return !(pp_read(LIMA_PP_STATUS) & LIMA_PP_STATUS_RENDERING_ACTIVE) &&
  pp_read(LIMA_PP_INT_RAWSTAT) == LIMA_PP_IRQ_RESET_COMPLETED;
}
