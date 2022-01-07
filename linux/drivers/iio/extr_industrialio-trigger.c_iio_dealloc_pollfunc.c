
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_poll_func* name; } ;


 int kfree (struct iio_poll_func*) ;

void iio_dealloc_pollfunc(struct iio_poll_func *pf)
{
 kfree(pf->name);
 kfree(pf);
}
