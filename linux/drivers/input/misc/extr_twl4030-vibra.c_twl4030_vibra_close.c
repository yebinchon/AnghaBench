
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibra_info {scalar_t__ enabled; int play_work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct vibra_info* input_get_drvdata (struct input_dev*) ;
 int vibra_disable (struct vibra_info*) ;

__attribute__((used)) static void twl4030_vibra_close(struct input_dev *input)
{
 struct vibra_info *info = input_get_drvdata(input);

 cancel_work_sync(&info->play_work);

 if (info->enabled)
  vibra_disable(info);
}
