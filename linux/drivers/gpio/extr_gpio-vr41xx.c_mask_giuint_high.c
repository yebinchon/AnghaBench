
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int GIUINTENH ;
 int GIUINT_HIGH_OFFSET ;
 int GPIO_PIN_OF_IRQ (int ) ;
 int giu_clear (int ,int) ;

__attribute__((used)) static void mask_giuint_high(struct irq_data *d)
{
 giu_clear(GIUINTENH, 1 << (GPIO_PIN_OF_IRQ(d->irq) - GIUINT_HIGH_OFFSET));
}
