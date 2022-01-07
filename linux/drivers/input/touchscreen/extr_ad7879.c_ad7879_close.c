
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct ad7879 {int suspended; int disabled; } ;


 int __ad7879_disable (struct ad7879*) ;
 struct ad7879* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void ad7879_close(struct input_dev *input)
{
 struct ad7879 *ts = input_get_drvdata(input);


 if (!ts->disabled && !ts->suspended)
  __ad7879_disable(ts);
}
