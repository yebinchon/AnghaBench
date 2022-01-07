
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {int i2c_clock; } ;


 int ENODEV ;
 int IO_SIZE ;
 int base ;
 scalar_t__ check_legacy_ioport (int ) ;
 int clock ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int) ;
 int free_irq (int,int *) ;
 scalar_t__ i2c_pca_add_bus (int *) ;
 int init_waitqueue_head (int *) ;
 int irq ;
 int pca_handler ;
 TYPE_1__ pca_isa_data ;
 int pca_isa_ops ;
 int pca_wait ;
 int release_region (int ,int ) ;
 scalar_t__ request_irq (int,int ,int ,char*,int *) ;
 int request_region (int ,int ,char*) ;

__attribute__((used)) static int pca_isa_probe(struct device *dev, unsigned int id)
{
 init_waitqueue_head(&pca_wait);

 dev_info(dev, "i/o base %#08lx. irq %d\n", base, irq);
 if (!request_region(base, IO_SIZE, "i2c-pca-isa")) {
  dev_err(dev, "I/O address %#08lx is in use\n", base);
  goto out;
 }

 if (irq > -1) {
  if (request_irq(irq, pca_handler, 0, "i2c-pca-isa", &pca_isa_ops) < 0) {
   dev_err(dev, "Request irq%d failed\n", irq);
   goto out_region;
  }
 }

 pca_isa_data.i2c_clock = clock;
 if (i2c_pca_add_bus(&pca_isa_ops) < 0) {
  dev_err(dev, "Failed to add i2c bus\n");
  goto out_irq;
 }

 return 0;

 out_irq:
 if (irq > -1)
  free_irq(irq, &pca_isa_ops);
 out_region:
 release_region(base, IO_SIZE);
 out:
 return -ENODEV;
}
