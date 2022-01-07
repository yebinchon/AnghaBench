
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;


 int __dm_destroy (struct mapped_device*,int) ;

void dm_destroy_immediate(struct mapped_device *md)
{
 __dm_destroy(md, 0);
}
