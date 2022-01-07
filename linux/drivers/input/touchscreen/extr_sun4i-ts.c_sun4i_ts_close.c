
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_ts_data {scalar_t__ base; } ;
struct input_dev {int dummy; } ;


 int TEMP_IRQ_EN (int) ;
 scalar_t__ TP_INT_FIFOC ;
 struct sun4i_ts_data* input_get_drvdata (struct input_dev*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_ts_close(struct input_dev *dev)
{
 struct sun4i_ts_data *ts = input_get_drvdata(dev);


 writel(TEMP_IRQ_EN(1), ts->base + TP_INT_FIFOC);
}
