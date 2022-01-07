
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int irq_set_affinity; int irq_set_vcpu_affinity; int irq_eoi; int irq_mask; struct device* parent_device; } ;
struct gic_chip_data {TYPE_1__ chip; } ;
struct device {int dummy; } ;


 TYPE_1__ gic_chip ;
 struct gic_chip_data* gic_data ;
 int gic_eoimode1_eoi_irq ;
 int gic_eoimode1_mask_irq ;
 int gic_irq_set_vcpu_affinity ;
 int gic_set_affinity ;

__attribute__((used)) static void gic_init_chip(struct gic_chip_data *gic, struct device *dev,
     const char *name, bool use_eoimode1)
{

 gic->chip = gic_chip;
 gic->chip.name = name;
 gic->chip.parent_device = dev;

 if (use_eoimode1) {
  gic->chip.irq_mask = gic_eoimode1_mask_irq;
  gic->chip.irq_eoi = gic_eoimode1_eoi_irq;
  gic->chip.irq_set_vcpu_affinity = gic_irq_set_vcpu_affinity;
 }





}
