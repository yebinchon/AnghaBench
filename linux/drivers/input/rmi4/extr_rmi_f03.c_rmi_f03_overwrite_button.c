
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_function {int dev; } ;
struct f03_data {unsigned int overwrite_buttons; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int BTN_LEFT ;
 unsigned int BTN_MIDDLE ;
 int EINVAL ;
 struct f03_data* dev_get_drvdata (int *) ;

int rmi_f03_overwrite_button(struct rmi_function *fn, unsigned int button,
        int value)
{
 struct f03_data *f03 = dev_get_drvdata(&fn->dev);
 unsigned int bit;

 if (button < BTN_LEFT || button > BTN_MIDDLE)
  return -EINVAL;

 bit = BIT(button - BTN_LEFT);

 if (value)
  f03->overwrite_buttons |= bit;
 else
  f03->overwrite_buttons &= ~bit;

 return 0;
}
