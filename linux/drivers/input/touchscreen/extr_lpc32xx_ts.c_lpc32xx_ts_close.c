
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_tsc {int dummy; } ;
struct input_dev {int dummy; } ;


 struct lpc32xx_tsc* input_get_drvdata (struct input_dev*) ;
 int lpc32xx_stop_tsc (struct lpc32xx_tsc*) ;

__attribute__((used)) static void lpc32xx_ts_close(struct input_dev *dev)
{
 struct lpc32xx_tsc *tsc = input_get_drvdata(dev);

 lpc32xx_stop_tsc(tsc);
}
