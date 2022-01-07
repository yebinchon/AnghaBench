
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct da9052_tsi {int stopped; int da9052; } ;


 int DA9052_IRQ_PENDOWN ;
 int DA9052_TSI_CONT_A_REG ;
 int da9052_enable_irq (int ,int ) ;
 int da9052_reg_update (int ,int ,int,int) ;
 struct da9052_tsi* input_get_drvdata (struct input_dev*) ;
 int mb () ;

__attribute__((used)) static int da9052_ts_input_open(struct input_dev *input_dev)
{
 struct da9052_tsi *tsi = input_get_drvdata(input_dev);

 tsi->stopped = 0;
 mb();


 da9052_enable_irq(tsi->da9052, DA9052_IRQ_PENDOWN);


 return da9052_reg_update(tsi->da9052, DA9052_TSI_CONT_A_REG,
     1 << 1, 1 << 1);
}
