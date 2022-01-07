
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ip {int irq; struct lima_device* dev; } ;
struct lima_device {int dev; } ;


 int IRQF_SHARED ;
 int dev_err (int ,char*,int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct lima_ip*) ;
 int lima_ip_name (struct lima_ip*) ;
 int lima_pp_bcast_irq_handler ;

int lima_pp_bcast_init(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;

 err = devm_request_irq(dev->dev, ip->irq, lima_pp_bcast_irq_handler,
          IRQF_SHARED, lima_ip_name(ip), ip);
 if (err) {
  dev_err(dev->dev, "pp %s fail to request irq\n",
   lima_ip_name(ip));
  return err;
 }

 return 0;
}
