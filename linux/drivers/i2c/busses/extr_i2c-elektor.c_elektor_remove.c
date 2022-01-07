
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int base ;
 int base_iomem ;
 int disable_irq (scalar_t__) ;
 int free_irq (scalar_t__,int *) ;
 int i2c_del_adapter (int *) ;
 int ioport_unmap (int ) ;
 int iounmap (int ) ;
 scalar_t__ irq ;
 int mmapped ;
 int pcf_isa_ops ;
 int release_mem_region (int ,int) ;
 int release_region (int ,int) ;

__attribute__((used)) static int elektor_remove(struct device *dev, unsigned int id)
{
 i2c_del_adapter(&pcf_isa_ops);

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

 return 0;
}
