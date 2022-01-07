
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int async_reset; } ;
struct lima_ip {int irq; TYPE_1__ data; struct lima_device* dev; } ;
struct lima_device {int pp_version; int dev; } ;


 int IRQF_SHARED ;
 int LIMA_PP_VERSION ;
 int dev_err (int ,char*,int ) ;
 int devm_request_irq (int ,int ,int ,int ,int ,struct lima_ip*) ;
 int lima_ip_name (struct lima_ip*) ;
 int lima_pp_irq_handler ;
 int lima_pp_print_version (struct lima_ip*) ;
 int lima_pp_soft_reset_async (struct lima_ip*) ;
 int lima_pp_soft_reset_async_wait (struct lima_ip*) ;
 int pp_read (int ) ;

int lima_pp_init(struct lima_ip *ip)
{
 struct lima_device *dev = ip->dev;
 int err;

 lima_pp_print_version(ip);

 ip->data.async_reset = 0;
 lima_pp_soft_reset_async(ip);
 err = lima_pp_soft_reset_async_wait(ip);
 if (err)
  return err;

 err = devm_request_irq(dev->dev, ip->irq, lima_pp_irq_handler,
          IRQF_SHARED, lima_ip_name(ip), ip);
 if (err) {
  dev_err(dev->dev, "pp %s fail to request irq\n",
   lima_ip_name(ip));
  return err;
 }

 dev->pp_version = pp_read(LIMA_PP_VERSION);

 return 0;
}
