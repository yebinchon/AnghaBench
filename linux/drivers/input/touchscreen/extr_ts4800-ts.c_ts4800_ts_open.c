
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts4800_ts {int pendown; int dev; int bit; int reg; int regmap; int debounce; } ;
struct input_polled_dev {struct ts4800_ts* private; } ;


 int DEBOUNCE_COUNT ;
 int dev_warn (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void ts4800_ts_open(struct input_polled_dev *dev)
{
 struct ts4800_ts *ts = dev->private;
 int ret;

 ts->pendown = 0;
 ts->debounce = DEBOUNCE_COUNT;

 ret = regmap_update_bits(ts->regmap, ts->reg, ts->bit, ts->bit);
 if (ret)
  dev_warn(ts->dev, "Failed to enable touchscreen\n");
}
