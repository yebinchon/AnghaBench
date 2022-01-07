
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vibra_info {scalar_t__ enabled; int play_work; } ;
struct input_dev {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct vibra_info* input_get_drvdata (struct input_dev*) ;
 int sc27xx_vibra_set (struct vibra_info*,int) ;

__attribute__((used)) static void sc27xx_vibra_close(struct input_dev *input)
{
 struct vibra_info *info = input_get_drvdata(input);

 cancel_work_sync(&info->play_work);
 if (info->enabled)
  sc27xx_vibra_set(info, 0);
}
