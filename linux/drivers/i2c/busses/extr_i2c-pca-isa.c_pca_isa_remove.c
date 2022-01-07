
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IO_SIZE ;
 int base ;
 int disable_irq (int) ;
 int free_irq (int,int *) ;
 int i2c_del_adapter (int *) ;
 int irq ;
 int pca_isa_ops ;
 int release_region (int ,int ) ;

__attribute__((used)) static int pca_isa_remove(struct device *dev, unsigned int id)
{
 i2c_del_adapter(&pca_isa_ops);

 if (irq > -1) {
  disable_irq(irq);
  free_irq(irq, &pca_isa_ops);
 }
 release_region(base, IO_SIZE);

 return 0;
}
