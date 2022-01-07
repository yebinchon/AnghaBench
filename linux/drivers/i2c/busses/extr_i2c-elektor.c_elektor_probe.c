
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int ENODEV ;
 int base ;
 int base_iomem ;
 int dev_info (struct device*,char*,int ) ;
 int disable_irq (scalar_t__) ;
 int free_irq (scalar_t__,int *) ;
 scalar_t__ i2c_pcf_add_bus (TYPE_2__*) ;
 int init_waitqueue_head (int *) ;
 int ioport_unmap (int ) ;
 int iounmap (int ) ;
 scalar_t__ irq ;
 int mmapped ;
 scalar_t__ pcf_isa_init () ;
 TYPE_2__ pcf_isa_ops ;
 int pcf_wait ;
 int release_mem_region (int ,int) ;
 int release_region (int ,int) ;

__attribute__((used)) static int elektor_probe(struct device *dev, unsigned int id)
{
 init_waitqueue_head(&pcf_wait);
 if (pcf_isa_init())
  return -ENODEV;
 pcf_isa_ops.dev.parent = dev;
 if (i2c_pcf_add_bus(&pcf_isa_ops) < 0)
  goto fail;

 dev_info(dev, "found device at %#x\n", base);

 return 0;

 fail:
 if (irq > 0) {
  disable_irq(irq);
  free_irq(irq, ((void*)0));
 }

 if (!mmapped) {
  ioport_unmap(base_iomem);
  release_region(base, 2);
 } else {
  iounmap(base_iomem);
  release_mem_region(base, 2);
 }
 return -ENODEV;
}
