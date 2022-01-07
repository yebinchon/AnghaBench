
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa27x_keypad {TYPE_2__* input_dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EINVAL ;
 int dev_info (int ,char*) ;

__attribute__((used)) static int pxa27x_keypad_build_keycode_from_dt(struct pxa27x_keypad *keypad)
{
 dev_info(keypad->input_dev->dev.parent, "missing platform data\n");

 return -EINVAL;
}
