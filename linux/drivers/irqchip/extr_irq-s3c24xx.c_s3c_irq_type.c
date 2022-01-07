
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int EINVAL ;






 int handle_edge_irq ;
 int handle_level_irq ;
 int irq_set_handler (int ,int ) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static int s3c_irq_type(struct irq_data *data, unsigned int type)
{
 switch (type) {
 case 128:
  break;
 case 131:
 case 132:
 case 133:
  irq_set_handler(data->irq, handle_edge_irq);
  break;
 case 129:
 case 130:
  irq_set_handler(data->irq, handle_level_irq);
  break;
 default:
  pr_err("No such irq type %d\n", type);
  return -EINVAL;
 }

 return 0;
}
