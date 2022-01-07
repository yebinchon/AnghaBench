
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ff_effect {int dummy; } ;
struct drv2665_data {int work; } ;


 struct drv2665_data* input_get_drvdata (struct input_dev*) ;
 int schedule_work (int *) ;

__attribute__((used)) static int drv2665_haptics_play(struct input_dev *input, void *data,
    struct ff_effect *effect)
{
 struct drv2665_data *haptics = input_get_drvdata(input);

 schedule_work(&haptics->work);

 return 0;
}
