
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int * callback; } ;
struct device {int dummy; } ;
struct dc_pad {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct dc_pad*) ;
 struct dc_pad* maple_get_drvdata (struct maple_device*) ;
 int maple_set_drvdata (struct maple_device*,int *) ;
 struct maple_device* to_maple_dev (struct device*) ;

__attribute__((used)) static int remove_maple_controller(struct device *dev)
{
 struct maple_device *mdev = to_maple_dev(dev);
 struct dc_pad *pad = maple_get_drvdata(mdev);

 mdev->callback = ((void*)0);
 input_unregister_device(pad->dev);
 maple_set_drvdata(mdev, ((void*)0));
 kfree(pad);

 return 0;
}
