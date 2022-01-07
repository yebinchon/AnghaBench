
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct device {int dummy; } ;


 int HTCPEN_IRQ ;
 int HTCPEN_PORT_INDEX ;
 int HTCPEN_PORT_INIT ;
 int HTCPEN_PORT_IRQ_CLEAR ;
 struct input_dev* dev_get_drvdata (struct device*) ;
 int free_irq (int ,struct input_dev*) ;
 int input_unregister_device (struct input_dev*) ;
 int release_region (int ,int) ;

__attribute__((used)) static int htcpen_isa_remove(struct device *dev, unsigned int id)
{
 struct input_dev *htcpen_dev = dev_get_drvdata(dev);

 input_unregister_device(htcpen_dev);

 free_irq(HTCPEN_IRQ, htcpen_dev);

 release_region(HTCPEN_PORT_INDEX, 2);
 release_region(HTCPEN_PORT_INIT, 1);
 release_region(HTCPEN_PORT_IRQ_CLEAR, 1);

 return 0;
}
