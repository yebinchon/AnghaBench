
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int async_reset; } ;
struct lima_ip {int irq; TYPE_1__ data; struct lima_device* dev; } ;
struct lima_device {int gp_version; int dev; } ;


 int IRQF_SHARED ;
 int LIMA_GP_VERSION ;
 int dev_err (int ,char*,int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct lima_ip*) ;
 int gp_read (int ) ;
 int lima_gp_irq_handler ;
 int lima_gp_print_version (struct lima_ip*) ;
 int lima_gp_soft_reset_async (struct lima_ip*) ;
 int lima_gp_soft_reset_async_wait (struct lima_ip*) ;
 int lima_ip_name (struct lima_ip*) ;

int lima_gp_init(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;

 lima_gp_print_version(ip);

 ip->data.async_reset = 0;
 lima_gp_soft_reset_async(ip);
 err = lima_gp_soft_reset_async_wait(ip);
 if (err)
  return err;

 err = devm_request_irq(dev->dev, ip->irq, lima_gp_irq_handler,
          IRQF_SHARED, lima_ip_name(ip), ip);
 if (err) {
  dev_err(dev->dev, "gp %s fail to request irq\n",
   lima_ip_name(ip));
  return err;
 }

 dev->gp_version = gp_read(LIMA_GP_VERSION);

 return 0;
}
