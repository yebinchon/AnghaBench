
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe_touch {int stmpe; } ;
struct input_dev {int dummy; } ;


 int STMPE_REG_TSC_CTRL ;
 int STMPE_TSC_CTRL_TSC_EN ;
 int __stmpe_reset_fifo (int ) ;
 struct stmpe_touch* input_get_drvdata (struct input_dev*) ;
 int stmpe_set_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int stmpe_ts_open(struct input_dev *dev)
{
 struct stmpe_touch *ts = input_get_drvdata(dev);
 int ret = 0;

 ret = __stmpe_reset_fifo(ts->stmpe);
 if (ret)
  return ret;

 return stmpe_set_bits(ts->stmpe, STMPE_REG_TSC_CTRL,
   STMPE_TSC_CTRL_TSC_EN, STMPE_TSC_CTRL_TSC_EN);
}
