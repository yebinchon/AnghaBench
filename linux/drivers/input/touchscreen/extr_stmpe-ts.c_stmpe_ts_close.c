
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_touch {int stmpe; int work; } ;
struct input_dev {int dummy; } ;


 int STMPE_REG_TSC_CTRL ;
 int STMPE_TSC_CTRL_TSC_EN ;
 int cancel_delayed_work_sync (int *) ;
 struct stmpe_touch* input_get_drvdata (struct input_dev*) ;
 int stmpe_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void stmpe_ts_close(struct input_dev *dev)
{
 struct stmpe_touch *ts = input_get_drvdata(dev);

 cancel_delayed_work_sync(&ts->work);

 stmpe_set_bits(ts->stmpe, STMPE_REG_TSC_CTRL,
   STMPE_TSC_CTRL_TSC_EN, 0);
}
