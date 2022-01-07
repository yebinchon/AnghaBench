
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dev; } ;
struct dc_pad {int mdev; } ;


 int MAPLE_FUNC_CONTROLLER ;
 int dc_pad_callback ;
 struct dc_pad* dev_get_platdata (int *) ;
 int maple_getcond_callback (int ,int ,int ,int ) ;

__attribute__((used)) static void dc_pad_close(struct input_dev *dev)
{
 struct dc_pad *pad = dev_get_platdata(&dev->dev);

 maple_getcond_callback(pad->mdev, dc_pad_callback, 0,
  MAPLE_FUNC_CONTROLLER);
}
