
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kxtj9_data {TYPE_3__* client; } ;
struct TYPE_5__ {int * parent; } ;
struct TYPE_4__ {int bustype; } ;
struct input_dev {char* name; TYPE_2__ dev; TYPE_1__ id; int evbit; } ;
struct TYPE_6__ {int dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int BUS_I2C ;
 int EV_ABS ;
 int FLAT ;
 int FUZZ ;
 int G_MAX ;
 int __set_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void kxtj9_init_input_device(struct kxtj9_data *tj9,
           struct input_dev *input_dev)
{
 __set_bit(EV_ABS, input_dev->evbit);
 input_set_abs_params(input_dev, ABS_X, -G_MAX, G_MAX, FUZZ, FLAT);
 input_set_abs_params(input_dev, ABS_Y, -G_MAX, G_MAX, FUZZ, FLAT);
 input_set_abs_params(input_dev, ABS_Z, -G_MAX, G_MAX, FUZZ, FLAT);

 input_dev->name = "kxtj9_accel";
 input_dev->id.bustype = BUS_I2C;
 input_dev->dev.parent = &tj9->client->dev;
}
