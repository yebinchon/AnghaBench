
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* chip; struct irq_data* parent_data; } ;
struct TYPE_2__ {int (* irq_set_type ) (struct irq_data*,unsigned int) ;} ;


 int CIRQ_POL_CLR ;
 int CIRQ_POL_SET ;
 int CIRQ_SENS_CLR ;
 int CIRQ_SENS_SET ;




 unsigned int IRQ_TYPE_SENSE_MASK ;
 int mtk_cirq_write_mask (struct irq_data*,int ) ;
 int stub1 (struct irq_data*,unsigned int) ;

__attribute__((used)) static int mtk_cirq_set_type(struct irq_data *data, unsigned int type)
{
 int ret;

 switch (type & IRQ_TYPE_SENSE_MASK) {
 case 131:
  mtk_cirq_write_mask(data, CIRQ_POL_CLR);
  mtk_cirq_write_mask(data, CIRQ_SENS_CLR);
  break;
 case 130:
  mtk_cirq_write_mask(data, CIRQ_POL_SET);
  mtk_cirq_write_mask(data, CIRQ_SENS_CLR);
  break;
 case 128:
  mtk_cirq_write_mask(data, CIRQ_POL_CLR);
  mtk_cirq_write_mask(data, CIRQ_SENS_SET);
  break;
 case 129:
  mtk_cirq_write_mask(data, CIRQ_POL_SET);
  mtk_cirq_write_mask(data, CIRQ_SENS_SET);
  break;
 default:
  break;
 }

 data = data->parent_data;
 ret = data->chip->irq_set_type(data, type);
 return ret;
}
