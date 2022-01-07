
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int async_reset; } ;
struct lima_ip {TYPE_1__ data; } ;


 int LIMA_PP_CTRL ;
 int LIMA_PP_CTRL_SOFT_RESET ;
 int LIMA_PP_INT_MASK ;
 int LIMA_PP_INT_RAWSTAT ;
 int LIMA_PP_IRQ_MASK_ALL ;
 int pp_write (int ,int ) ;

__attribute__((used)) static void lima_pp_soft_reset_async(struct lima_ip *ip)
{
 if (ip->data.async_reset)
  return;

 pp_write(LIMA_PP_INT_MASK, 0);
 pp_write(LIMA_PP_INT_RAWSTAT, LIMA_PP_IRQ_MASK_ALL);
 pp_write(LIMA_PP_CTRL, LIMA_PP_CTRL_SOFT_RESET);
 ip->data.async_reset = 1;
}
