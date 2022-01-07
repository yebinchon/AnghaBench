
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int dummy; } ;
struct input_dev {int dummy; } ;


 struct tsc2007* input_get_drvdata (struct input_dev*) ;
 int tsc2007_stop (struct tsc2007*) ;

__attribute__((used)) static void tsc2007_close(struct input_dev *input_dev)
{
 struct tsc2007 *ts = input_get_drvdata(input_dev);

 tsc2007_stop(ts);
}
