
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_pwrc_drvdata {int work; } ;
struct input_dev {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 struct sirfsoc_pwrc_drvdata* input_get_drvdata (struct input_dev*) ;
 int sirfsoc_pwrc_toggle_interrupts (struct sirfsoc_pwrc_drvdata*,int) ;

__attribute__((used)) static void sirfsoc_pwrc_close(struct input_dev *input)
{
 struct sirfsoc_pwrc_drvdata *pwrcdrv = input_get_drvdata(input);

 sirfsoc_pwrc_toggle_interrupts(pwrcdrv, 0);
 cancel_delayed_work_sync(&pwrcdrv->work);
}
