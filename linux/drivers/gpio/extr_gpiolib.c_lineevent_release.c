
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lineevent_state {struct lineevent_state* label; int desc; int irq; struct gpio_device* gdev; } ;
struct inode {int dummy; } ;
struct gpio_device {int dev; } ;
struct file {struct lineevent_state* private_data; } ;


 int free_irq (int ,struct lineevent_state*) ;
 int gpiod_free (int ) ;
 int kfree (struct lineevent_state*) ;
 int put_device (int *) ;

__attribute__((used)) static int lineevent_release(struct inode *inode, struct file *filep)
{
 struct lineevent_state *le = filep->private_data;
 struct gpio_device *gdev = le->gdev;

 free_irq(le->irq, le);
 gpiod_free(le->desc);
 kfree(le->label);
 kfree(le);
 put_device(&gdev->dev);
 return 0;
}
