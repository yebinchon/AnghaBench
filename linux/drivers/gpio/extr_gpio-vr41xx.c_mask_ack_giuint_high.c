
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int GIUINTENH ;
 int GIUINTSTATH ;
 unsigned int GIUINT_HIGH_OFFSET ;
 unsigned int GPIO_PIN_OF_IRQ (int ) ;
 int giu_clear (int ,int) ;
 int giu_write (int ,int) ;

__attribute__((used)) static void mask_ack_giuint_high(struct irq_data *d)
{
 unsigned int pin;

 pin = GPIO_PIN_OF_IRQ(d->irq) - GIUINT_HIGH_OFFSET;
 giu_clear(GIUINTENH, 1 << pin);
 giu_write(GIUINTSTATH, 1 << pin);
}
