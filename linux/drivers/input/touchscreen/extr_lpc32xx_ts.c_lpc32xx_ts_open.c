
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_tsc {int dummy; } ;
struct input_dev {int dummy; } ;


 struct lpc32xx_tsc* input_get_drvdata (struct input_dev*) ;
 int lpc32xx_setup_tsc (struct lpc32xx_tsc*) ;

__attribute__((used)) static int lpc32xx_ts_open(struct input_dev *dev)
{
 struct lpc32xx_tsc *tsc = input_get_drvdata(dev);

 return lpc32xx_setup_tsc(tsc);
}
