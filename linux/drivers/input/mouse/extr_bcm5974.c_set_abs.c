
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bcm5974_param {int snratio; int max; int min; } ;


 int input_set_abs_params (struct input_dev*,unsigned int,int,int,int,int ) ;

__attribute__((used)) static void set_abs(struct input_dev *input, unsigned int code,
      const struct bcm5974_param *p)
{
 int fuzz = p->snratio ? (p->max - p->min) / p->snratio : 0;
 input_set_abs_params(input, code, p->min, p->max, fuzz, 0);
}
