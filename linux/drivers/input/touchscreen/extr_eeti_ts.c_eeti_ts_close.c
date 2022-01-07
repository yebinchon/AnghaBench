
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct eeti_ts {int dummy; } ;


 int eeti_ts_stop (struct eeti_ts*) ;
 struct eeti_ts* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void eeti_ts_close(struct input_dev *dev)
{
 struct eeti_ts *eeti = input_get_drvdata(dev);

 eeti_ts_stop(eeti);
}
