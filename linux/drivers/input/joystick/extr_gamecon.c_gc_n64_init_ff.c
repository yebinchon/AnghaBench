
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gc_subdev {int idx; } ;


 int ENOMEM ;
 int EV_FF ;
 int FF_RUMBLE ;
 int GFP_KERNEL ;
 int gc_n64_play_effect ;
 int input_ff_create_memless (struct input_dev*,struct gc_subdev*,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int kfree (struct gc_subdev*) ;
 struct gc_subdev* kmalloc (int,int ) ;

__attribute__((used)) static int gc_n64_init_ff(struct input_dev *dev, int i)
{
 struct gc_subdev *sdev;
 int err;

 sdev = kmalloc(sizeof(*sdev), GFP_KERNEL);
 if (!sdev)
  return -ENOMEM;

 sdev->idx = i;

 input_set_capability(dev, EV_FF, FF_RUMBLE);

 err = input_ff_create_memless(dev, sdev, gc_n64_play_effect);
 if (err) {
  kfree(sdev);
  return err;
 }

 return 0;
}
