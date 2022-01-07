
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct omap4_keypad {struct omap4_keypad* keymap; int base; int input; int irq; } ;


 int IORESOURCE_MEM ;
 int free_irq (int ,struct omap4_keypad*) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct omap4_keypad*) ;
 struct omap4_keypad* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_disable (int *) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int omap4_keypad_remove(struct platform_device *pdev)
{
 struct omap4_keypad *keypad_data = platform_get_drvdata(pdev);
 struct resource *res;

 free_irq(keypad_data->irq, keypad_data);

 pm_runtime_disable(&pdev->dev);

 input_unregister_device(keypad_data->input);

 iounmap(keypad_data->base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 kfree(keypad_data->keymap);
 kfree(keypad_data);

 return 0;
}
