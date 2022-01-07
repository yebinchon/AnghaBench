
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct synaptics_i2c {TYPE_4__* client; struct input_dev* input; } ;
struct TYPE_7__ {int * parent; } ;
struct TYPE_6__ {int version; int bustype; } ;
struct input_dev {int keybit; int evbit; int relbit; int close; int open; TYPE_3__ dev; TYPE_2__ id; int phys; int name; } ;
struct TYPE_8__ {int dev; TYPE_1__* adapter; int name; } ;
struct TYPE_5__ {int name; } ;


 int BTN_LEFT ;
 int BUS_I2C ;
 int EV_KEY ;
 int EV_REL ;
 int INFO_QUERY_REG0 ;
 int REL_X ;
 int REL_Y ;
 int __set_bit (int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct synaptics_i2c*) ;
 int synaptics_i2c_close ;
 int synaptics_i2c_open ;
 int synaptics_i2c_word_get (TYPE_4__*,int ) ;

__attribute__((used)) static void synaptics_i2c_set_input_params(struct synaptics_i2c *touch)
{
 struct input_dev *input = touch->input;

 input->name = touch->client->name;
 input->phys = touch->client->adapter->name;
 input->id.bustype = BUS_I2C;
 input->id.version = synaptics_i2c_word_get(touch->client,
         INFO_QUERY_REG0);
 input->dev.parent = &touch->client->dev;
 input->open = synaptics_i2c_open;
 input->close = synaptics_i2c_close;
 input_set_drvdata(input, touch);


 __set_bit(EV_REL, input->evbit);
 __set_bit(REL_X, input->relbit);
 __set_bit(REL_Y, input->relbit);


 __set_bit(EV_KEY, input->evbit);
 __set_bit(BTN_LEFT, input->keybit);
}
