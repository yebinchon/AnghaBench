
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_host_device {int dev; } ;


 int put_device (int *) ;

void gb_hd_put(struct gb_host_device *hd)
{
 put_device(&hd->dev);
}
