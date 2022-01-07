
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tpci200_board {TYPE_2__* info; } ;
struct TYPE_4__ {TYPE_1__* interface_regs; } ;
struct TYPE_3__ {int * control; } ;


 int TPCI200_INT0_EN ;
 int TPCI200_INT1_EN ;
 int tpci200_set_mask (struct tpci200_board*,int *,int) ;

__attribute__((used)) static void tpci200_enable_irq(struct tpci200_board *tpci200,
          int islot)
{
 tpci200_set_mask(tpci200,
   &tpci200->info->interface_regs->control[islot],
   TPCI200_INT0_EN | TPCI200_INT1_EN);
}
