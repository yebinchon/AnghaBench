
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct or1k_pic_dev {int flags; int handle; int chip; } ;
struct irq_domain {struct or1k_pic_dev* host_data; } ;
typedef int irq_hw_number_t ;


 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int irq_set_status_flags (unsigned int,int ) ;

__attribute__((used)) static int or1k_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
{
 struct or1k_pic_dev *pic = d->host_data;

 irq_set_chip_and_handler(irq, &pic->chip, pic->handle);
 irq_set_status_flags(irq, pic->flags);

 return 0;
}
