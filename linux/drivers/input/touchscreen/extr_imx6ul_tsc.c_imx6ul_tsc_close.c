
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct imx6ul_tsc {int adc_clk; int tsc_clk; } ;


 int clk_disable_unprepare (int ) ;
 int imx6ul_tsc_disable (struct imx6ul_tsc*) ;
 struct imx6ul_tsc* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void imx6ul_tsc_close(struct input_dev *input_dev)
{
 struct imx6ul_tsc *tsc = input_get_drvdata(input_dev);

 imx6ul_tsc_disable(tsc);

 clk_disable_unprepare(tsc->tsc_clk);
 clk_disable_unprepare(tsc->adc_clk);
}
