
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_queue {int irq_name; int irq; int devino; int qhandle; } ;
struct spu_mdesc_info {int dummy; } ;
struct TYPE_2__ {int * irqs; } ;
struct platform_device {TYPE_1__ archdata; } ;
typedef int irq_handler_t ;


 int EINVAL ;
 int find_devino_index (struct platform_device*,struct spu_mdesc_info*,int ) ;
 int request_irq (int ,int ,int ,int ,struct spu_queue*) ;
 int sprintf (int ,char*,char const*,int) ;
 unsigned long sun4v_ncs_qhandle_to_devino (int ,int *) ;

__attribute__((used)) static int spu_map_ino(struct platform_device *dev, struct spu_mdesc_info *ip,
         const char *irq_name, struct spu_queue *p,
         irq_handler_t handler)
{
 unsigned long herr;
 int index;

 herr = sun4v_ncs_qhandle_to_devino(p->qhandle, &p->devino);
 if (herr)
  return -EINVAL;

 index = find_devino_index(dev, ip, p->devino);
 if (index < 0)
  return index;

 p->irq = dev->archdata.irqs[index];

 sprintf(p->irq_name, "%s-%d", irq_name, index);

 return request_irq(p->irq, handler, 0, p->irq_name, p);
}
