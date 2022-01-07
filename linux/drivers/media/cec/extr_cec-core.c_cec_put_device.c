
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_devnode {int dev; } ;


 int put_device (int *) ;

void cec_put_device(struct cec_devnode *devnode)
{
 put_device(&devnode->dev);
}
