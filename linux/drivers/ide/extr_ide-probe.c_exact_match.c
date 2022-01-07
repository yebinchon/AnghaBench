
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct gendisk {int dummy; } ;
typedef int dev_t ;
struct TYPE_2__ {struct kobject kobj; } ;


 int PARTN_BITS ;
 TYPE_1__* disk_to_dev (struct gendisk*) ;

__attribute__((used)) static struct kobject *exact_match(dev_t dev, int *part, void *data)
{
 struct gendisk *p = data;
 *part &= (1 << PARTN_BITS) - 1;
 return &disk_to_dev(p)->kobj;
}
