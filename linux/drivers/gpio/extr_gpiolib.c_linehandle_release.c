
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linehandle_state {int numdescs; struct linehandle_state* label; int * descs; struct gpio_device* gdev; } ;
struct inode {int dummy; } ;
struct gpio_device {int dev; } ;
struct file {struct linehandle_state* private_data; } ;


 int gpiod_free (int ) ;
 int kfree (struct linehandle_state*) ;
 int put_device (int *) ;

__attribute__((used)) static int linehandle_release(struct inode *inode, struct file *filep)
{
 struct linehandle_state *lh = filep->private_data;
 struct gpio_device *gdev = lh->gdev;
 int i;

 for (i = 0; i < lh->numdescs; i++)
  gpiod_free(lh->descs[i]);
 kfree(lh->label);
 kfree(lh);
 put_device(&gdev->dev);
 return 0;
}
