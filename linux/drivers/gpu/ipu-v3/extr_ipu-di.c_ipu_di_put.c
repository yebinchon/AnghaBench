
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_di {int inuse; } ;


 int ipu_di_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ipu_di_put(struct ipu_di *di)
{
 mutex_lock(&ipu_di_lock);

 di->inuse = 0;

 mutex_unlock(&ipu_di_lock);
}
