
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_devnode {int lock; int dev; int registered; } ;


 int ENXIO ;
 int get_device (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cec_get_device(struct cec_devnode *devnode)
{







 mutex_lock(&devnode->lock);




 if (!devnode->registered) {
  mutex_unlock(&devnode->lock);
  return -ENXIO;
 }

 get_device(&devnode->dev);
 mutex_unlock(&devnode->lock);
 return 0;
}
