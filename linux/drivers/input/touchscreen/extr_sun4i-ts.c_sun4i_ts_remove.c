
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_ts_data {scalar_t__ base; scalar_t__ input; } ;
struct platform_device {int dummy; } ;


 scalar_t__ TP_INT_FIFOC ;
 int input_unregister_device (scalar_t__) ;
 struct sun4i_ts_data* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun4i_ts_remove(struct platform_device *pdev)
{
 struct sun4i_ts_data *ts = platform_get_drvdata(pdev);


 if (ts->input)
  input_unregister_device(ts->input);


 writel(0, ts->base + TP_INT_FIFOC);

 return 0;
}
