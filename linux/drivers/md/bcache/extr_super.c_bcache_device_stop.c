
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache_device {int cl; int flags; } ;


 int BCACHE_DEV_CLOSING ;
 int closure_queue (int *) ;
 int test_and_set_bit (int ,int *) ;

void bcache_device_stop(struct bcache_device *d)
{
 if (!test_and_set_bit(BCACHE_DEV_CLOSING, &d->flags))





  closure_queue(&d->cl);
}
