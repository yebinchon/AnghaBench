
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int async_reset; } ;
struct lima_ip {TYPE_1__ data; } ;


 int LIMA_GP_CMD ;
 int LIMA_GP_CMD_SOFT_RESET ;
 int LIMA_GP_INT_CLEAR ;
 int LIMA_GP_INT_MASK ;
 int LIMA_GP_IRQ_RESET_COMPLETED ;
 int gp_write (int ,int ) ;

__attribute__((used)) static void lima_gp_soft_reset_async(struct lima_ip *ip)
{
 if (ip->data.async_reset)
  return;

 gp_write(LIMA_GP_INT_MASK, 0);
 gp_write(LIMA_GP_INT_CLEAR, LIMA_GP_IRQ_RESET_COMPLETED);
 gp_write(LIMA_GP_CMD, LIMA_GP_CMD_SOFT_RESET);
 ip->data.async_reset = 1;
}
