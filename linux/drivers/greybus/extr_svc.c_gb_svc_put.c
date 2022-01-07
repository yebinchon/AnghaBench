
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int dev; } ;


 int put_device (int *) ;

void gb_svc_put(struct gb_svc *svc)
{
 put_device(&svc->dev);
}
