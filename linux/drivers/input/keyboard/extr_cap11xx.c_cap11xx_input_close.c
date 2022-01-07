
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cap11xx_priv {int dummy; } ;


 int cap11xx_set_sleep (struct cap11xx_priv*,int) ;
 struct cap11xx_priv* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void cap11xx_input_close(struct input_dev *idev)
{
 struct cap11xx_priv *priv = input_get_drvdata(idev);

 cap11xx_set_sleep(priv, 1);
}
