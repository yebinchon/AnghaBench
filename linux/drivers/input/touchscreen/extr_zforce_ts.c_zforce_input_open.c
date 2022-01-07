
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts {int dummy; } ;
struct input_dev {int dummy; } ;


 struct zforce_ts* input_get_drvdata (struct input_dev*) ;
 int zforce_start (struct zforce_ts*) ;

__attribute__((used)) static int zforce_input_open(struct input_dev *dev)
{
 struct zforce_ts *ts = input_get_drvdata(dev);

 return zforce_start(ts);
}
