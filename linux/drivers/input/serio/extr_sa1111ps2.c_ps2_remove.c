
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct sa1111_dev {TYPE_1__ res; } ;
struct ps2if {int io; } ;


 int kfree (struct ps2if*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;
 struct ps2if* sa1111_get_drvdata (struct sa1111_dev*) ;
 int sa1111_set_drvdata (struct sa1111_dev*,int *) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int ps2_remove(struct sa1111_dev *dev)
{
 struct ps2if *ps2if = sa1111_get_drvdata(dev);

 serio_unregister_port(ps2if->io);
 release_mem_region(dev->res.start, resource_size(&dev->res));
 sa1111_set_drvdata(dev, ((void*)0));

 kfree(ps2if);

 return 0;
}
