
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_pwrc_drvdata {int dummy; } ;
struct input_dev {int dummy; } ;


 struct sirfsoc_pwrc_drvdata* input_get_drvdata (struct input_dev*) ;
 int sirfsoc_pwrc_toggle_interrupts (struct sirfsoc_pwrc_drvdata*,int) ;

__attribute__((used)) static int sirfsoc_pwrc_open(struct input_dev *input)
{
 struct sirfsoc_pwrc_drvdata *pwrcdrv = input_get_drvdata(input);

 sirfsoc_pwrc_toggle_interrupts(pwrcdrv, 1);

 return 0;
}
