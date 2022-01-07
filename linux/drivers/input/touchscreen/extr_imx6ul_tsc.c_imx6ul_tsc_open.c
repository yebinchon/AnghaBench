
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct imx6ul_tsc {int adc_clk; int tsc_clk; int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 int imx6ul_tsc_init (struct imx6ul_tsc*) ;
 struct imx6ul_tsc* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int imx6ul_tsc_open(struct input_dev *input_dev)
{
 struct imx6ul_tsc *tsc = input_get_drvdata(input_dev);
 int err;

 err = clk_prepare_enable(tsc->adc_clk);
 if (err) {
  dev_err(tsc->dev,
   "Could not prepare or enable the adc clock: %d\n",
   err);
  return err;
 }

 err = clk_prepare_enable(tsc->tsc_clk);
 if (err) {
  dev_err(tsc->dev,
   "Could not prepare or enable the tsc clock: %d\n",
   err);
  goto disable_adc_clk;
 }

 err = imx6ul_tsc_init(tsc);
 if (err)
  goto disable_tsc_clk;

 return 0;

disable_tsc_clk:
 clk_disable_unprepare(tsc->tsc_clk);
disable_adc_clk:
 clk_disable_unprepare(tsc->adc_clk);
 return err;
}
