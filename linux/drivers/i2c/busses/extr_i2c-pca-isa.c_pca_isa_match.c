
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ base ;
 int dev_err (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int irq ;

__attribute__((used)) static int pca_isa_match(struct device *dev, unsigned int id)
{
 int match = base != 0;

 if (match) {
  if (irq <= -1)
   dev_warn(dev, "Using polling mode (specify irq)\n");
 } else
  dev_err(dev, "Please specify I/O base\n");

 return match;
}
