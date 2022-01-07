
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipoctal {struct ipack_device* dev; } ;
struct ipack_device {int dev; int slot; TYPE_1__* bus; } ;
struct TYPE_2__ {int bus_nr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (int *,struct ipoctal*) ;
 int ipoctal_inst_slot (struct ipoctal*,int ,int ) ;
 int kfree (struct ipoctal*) ;
 struct ipoctal* kzalloc (int,int ) ;

__attribute__((used)) static int ipoctal_probe(struct ipack_device *dev)
{
 int res;
 struct ipoctal *ipoctal;

 ipoctal = kzalloc(sizeof(struct ipoctal), GFP_KERNEL);
 if (ipoctal == ((void*)0))
  return -ENOMEM;

 ipoctal->dev = dev;
 res = ipoctal_inst_slot(ipoctal, dev->bus->bus_nr, dev->slot);
 if (res)
  goto out_uninst;

 dev_set_drvdata(&dev->dev, ipoctal);
 return 0;

out_uninst:
 kfree(ipoctal);
 return res;
}
