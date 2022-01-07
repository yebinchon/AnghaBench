
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int dummy; } ;
struct device {int dummy; } ;
struct dc_kbd {int dev; } ;


 int input_unregister_device (int ) ;
 int kfree (struct dc_kbd*) ;
 struct dc_kbd* maple_get_drvdata (struct maple_device*) ;
 int maple_keyb_mutex ;
 int maple_set_drvdata (struct maple_device*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct maple_device* to_maple_dev (struct device*) ;

__attribute__((used)) static int remove_maple_kbd(struct device *dev)
{
 struct maple_device *mdev = to_maple_dev(dev);
 struct dc_kbd *kbd = maple_get_drvdata(mdev);

 mutex_lock(&maple_keyb_mutex);

 input_unregister_device(kbd->dev);
 kfree(kbd);

 maple_set_drvdata(mdev, ((void*)0));

 mutex_unlock(&maple_keyb_mutex);
 return 0;
}
