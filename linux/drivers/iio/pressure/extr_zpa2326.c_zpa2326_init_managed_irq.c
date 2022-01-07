
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int irq; int data_ready; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int dev_err (struct device*,char*,int,int) ;
 int dev_info (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int devm_request_threaded_irq (struct device*,int,int ,int ,int,int ,struct iio_dev*) ;
 int init_completion (int *) ;
 int zpa2326_handle_irq ;
 int zpa2326_handle_threaded_irq ;

__attribute__((used)) static int zpa2326_init_managed_irq(struct device *parent,
        struct iio_dev *indio_dev,
        struct zpa2326_private *private,
        int irq)
{
 int err;

 private->irq = irq;

 if (irq <= 0) {




  dev_info(parent, "no interrupt found, running in polling mode");
  return 0;
 }

 init_completion(&private->data_ready);


 err = devm_request_threaded_irq(parent, irq, zpa2326_handle_irq,
     zpa2326_handle_threaded_irq,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dev_name(parent), indio_dev);
 if (err) {
  dev_err(parent, "failed to request interrupt %d (%d)", irq,
   err);
  return err;
 }

 dev_info(parent, "using interrupt %d", irq);

 return 0;
}
