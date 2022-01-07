
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pcf50633_input {int input_dev; int pcf; } ;


 int PCF50633_IRQ_ONKEYF ;
 int PCF50633_IRQ_ONKEYR ;
 int input_unregister_device (int ) ;
 int kfree (struct pcf50633_input*) ;
 int pcf50633_free_irq (int ,int ) ;
 struct pcf50633_input* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int pcf50633_input_remove(struct platform_device *pdev)
{
 struct pcf50633_input *input = platform_get_drvdata(pdev);

 pcf50633_free_irq(input->pcf, PCF50633_IRQ_ONKEYR);
 pcf50633_free_irq(input->pcf, PCF50633_IRQ_ONKEYF);

 input_unregister_device(input->input_dev);
 kfree(input);

 return 0;
}
