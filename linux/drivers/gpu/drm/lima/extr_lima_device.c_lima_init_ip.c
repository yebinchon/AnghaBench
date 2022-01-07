
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip_desc {int* offset; int* must_have; int (* init ) (struct lima_ip*) ;scalar_t__ irq_name; } ;
struct lima_ip {int id; int irq; int present; scalar_t__ iomem; struct lima_device* dev; } ;
struct lima_device {size_t id; int pdev; scalar_t__ iomem; struct lima_ip* ip; } ;


 struct lima_ip_desc* lima_ip_desc ;
 int platform_get_irq_byname (int ,scalar_t__) ;
 int stub1 (struct lima_ip*) ;

__attribute__((used)) static int lima_init_ip(struct lima_device *dev, int index)
{
 struct lima_ip_desc *desc = lima_ip_desc + index;
 struct lima_ip *ip = dev->ip + index;
 int offset = desc->offset[dev->id];
 bool must = desc->must_have[dev->id];
 int err;

 if (offset < 0)
  return 0;

 ip->dev = dev;
 ip->id = index;
 ip->iomem = dev->iomem + offset;
 if (desc->irq_name) {
  err = platform_get_irq_byname(dev->pdev, desc->irq_name);
  if (err < 0)
   goto out;
  ip->irq = err;
 }

 err = desc->init(ip);
 if (!err) {
  ip->present = 1;
  return 0;
 }

out:
 return must ? err : 0;
}
