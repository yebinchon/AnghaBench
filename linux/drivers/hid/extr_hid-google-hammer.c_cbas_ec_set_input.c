
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct TYPE_2__ {struct input_dev* input; } ;


 TYPE_1__ cbas_ec ;
 int cbas_ec_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void cbas_ec_set_input(struct input_dev *input)
{

 spin_lock_irq(&cbas_ec_lock);
 cbas_ec.input = input;
 spin_unlock_irq(&cbas_ec_lock);
}
