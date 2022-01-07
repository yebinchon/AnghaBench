
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct auo_pixcir_ts {int dummy; } ;


 int auo_pixcir_stop (struct auo_pixcir_ts*) ;
 struct auo_pixcir_ts* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void auo_pixcir_input_close(struct input_dev *dev)
{
 struct auo_pixcir_ts *ts = input_get_drvdata(dev);

 auo_pixcir_stop(ts);
}
