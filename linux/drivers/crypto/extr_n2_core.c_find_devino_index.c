
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spu_mdesc_info {int num_intrs; TYPE_1__* ino_table; } ;
struct TYPE_6__ {int num_irqs; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_3__ archdata; TYPE_2__ dev; } ;
struct TYPE_4__ {unsigned long ino; unsigned int intr; } ;


 int ENODEV ;
 unsigned int* of_get_property (int ,char*,int *) ;

__attribute__((used)) static int find_devino_index(struct platform_device *dev, struct spu_mdesc_info *ip,
        unsigned long dev_ino)
{
 const unsigned int *dev_intrs;
 unsigned int intr;
 int i;

 for (i = 0; i < ip->num_intrs; i++) {
  if (ip->ino_table[i].ino == dev_ino)
   break;
 }
 if (i == ip->num_intrs)
  return -ENODEV;

 intr = ip->ino_table[i].intr;

 dev_intrs = of_get_property(dev->dev.of_node, "interrupts", ((void*)0));
 if (!dev_intrs)
  return -ENODEV;

 for (i = 0; i < dev->archdata.num_irqs; i++) {
  if (dev_intrs[i] == intr)
   return i;
 }

 return -ENODEV;
}
