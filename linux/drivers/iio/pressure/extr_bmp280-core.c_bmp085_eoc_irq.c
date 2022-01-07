
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmp280_data {int done; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t bmp085_eoc_irq(int irq, void *d)
{
 struct bmp280_data *data = d;

 complete(&data->done);

 return IRQ_HANDLED;
}
