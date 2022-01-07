
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_button_data {scalar_t__* children; } ;
struct platform_device {int dummy; } ;


 int BUTTON_TYPES ;
 int platform_device_unregister (scalar_t__) ;
 struct soc_button_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int soc_button_remove(struct platform_device *pdev)
{
 struct soc_button_data *priv = platform_get_drvdata(pdev);

 int i;

 for (i = 0; i < BUTTON_TYPES; i++)
  if (priv->children[i])
   platform_device_unregister(priv->children[i]);

 return 0;
}
