
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;


 int BMI160_PIN_INT1 ;
 int BMI160_PIN_INT2 ;
 int of_irq_get_byname (struct device_node*,char*) ;

__attribute__((used)) static int bmi160_get_irq(struct device_node *of_node, enum bmi160_int_pin *pin)
{
 int irq;


 irq = of_irq_get_byname(of_node, "INT1");
 if (irq > 0) {
  *pin = BMI160_PIN_INT1;
  return irq;
 }

 irq = of_irq_get_byname(of_node, "INT2");
 if (irq > 0)
  *pin = BMI160_PIN_INT2;

 return irq;
}
