
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_value {unsigned int member_0; unsigned int member_1; int member_2; } ;
struct input_dev {int dummy; } ;


 int ARRAY_SIZE (struct input_value*) ;
 int input_pass_values (struct input_dev*,struct input_value*,int ) ;

__attribute__((used)) static void input_pass_event(struct input_dev *dev,
        unsigned int type, unsigned int code, int value)
{
 struct input_value vals[] = { { type, code, value } };

 input_pass_values(dev, vals, ARRAY_SIZE(vals));
}
