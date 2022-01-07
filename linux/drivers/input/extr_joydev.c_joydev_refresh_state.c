
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct input_dev* dev; } ;
struct joydev {int nabs; int * corr; int * abs; int * abspam; TYPE_1__ handle; } ;
struct input_dev {int dummy; } ;


 int input_abs_get_val (struct input_dev*,int ) ;
 int joydev_correct (int,int *) ;

__attribute__((used)) static void joydev_refresh_state(struct joydev *joydev)
{
 struct input_dev *dev = joydev->handle.dev;
 int i, val;

 for (i = 0; i < joydev->nabs; i++) {
  val = input_abs_get_val(dev, joydev->abspam[i]);
  joydev->abs[i] = joydev_correct(val, &joydev->corr[i]);
 }
}
