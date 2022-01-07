
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm_device {int dev; int owner; } ;


 int module_put (int ) ;
 int put_device (int *) ;

void stm_put_device(struct stm_device *stm)
{
 module_put(stm->owner);
 put_device(&stm->dev);
}
