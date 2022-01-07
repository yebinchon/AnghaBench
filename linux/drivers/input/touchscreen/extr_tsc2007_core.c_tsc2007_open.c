
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc2007 {int stopped; int irq; } ;
struct input_dev {int dummy; } ;


 int PWRDOWN ;
 int enable_irq (int ) ;
 struct tsc2007* input_get_drvdata (struct input_dev*) ;
 int mb () ;
 int tsc2007_stop (struct tsc2007*) ;
 int tsc2007_xfer (struct tsc2007*,int ) ;

__attribute__((used)) static int tsc2007_open(struct input_dev *input_dev)
{
 struct tsc2007 *ts = input_get_drvdata(input_dev);
 int err;

 ts->stopped = 0;
 mb();

 enable_irq(ts->irq);


 err = tsc2007_xfer(ts, PWRDOWN);
 if (err < 0) {
  tsc2007_stop(ts);
  return err;
 }

 return 0;
}
