
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_aidet_priv {int dummy; } ;
struct irq_data {int hwirq; struct uniphier_aidet_priv* chip_data; } ;


 int EINVAL ;




 int irq_chip_set_type_parent (struct irq_data*,unsigned int) ;
 int uniphier_aidet_detconf_update (struct uniphier_aidet_priv*,int ,unsigned int) ;

__attribute__((used)) static int uniphier_aidet_irq_set_type(struct irq_data *data, unsigned int type)
{
 struct uniphier_aidet_priv *priv = data->chip_data;
 unsigned int val;


 switch (type) {
 case 130:
 case 129:
  val = 0;
  break;
 case 131:
  val = 1;
  type = 130;
  break;
 case 128:
  val = 1;
  type = 129;
  break;
 default:
  return -EINVAL;
 }

 uniphier_aidet_detconf_update(priv, data->hwirq, val);

 return irq_chip_set_type_parent(data, type);
}
