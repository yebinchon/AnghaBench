
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct bcache_device* private_data; } ;
struct bcache_device {int cl; } ;
typedef int fmode_t ;


 int closure_put (int *) ;

__attribute__((used)) static void release_dev(struct gendisk *b, fmode_t mode)
{
 struct bcache_device *d = b->private_data;

 closure_put(&d->cl);
}
