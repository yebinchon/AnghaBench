
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9532_data {int* pwm; int work; } ;
struct input_dev {int dummy; } ;


 unsigned int EV_SND ;
 unsigned int SND_BELL ;
 unsigned int SND_TONE ;
 struct pca9532_data* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int pca9532_event(struct input_dev *dev, unsigned int type,
 unsigned int code, int value)
{
 struct pca9532_data *data = input_get_drvdata(dev);

 if (!(type == EV_SND && (code == SND_BELL || code == SND_TONE)))
  return -1;


 if (value > 1 && value < 32767)
  data->pwm[1] = 127;
 else
  data->pwm[1] = 0;

 schedule_work(&data->work);

 return 0;
}
