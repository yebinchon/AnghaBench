
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnss_device {int dev; } ;


 int put_device (int *) ;

void gnss_put_device(struct gnss_device *gdev)
{
 put_device(&gdev->dev);
}
