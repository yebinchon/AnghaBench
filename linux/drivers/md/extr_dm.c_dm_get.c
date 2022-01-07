
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; int holders; } ;


 int BUG_ON (int ) ;
 int DMF_FREEING ;
 int atomic_inc (int *) ;
 int test_bit (int ,int *) ;

void dm_get(struct mapped_device *md)
{
 atomic_inc(&md->holders);
 BUG_ON(test_bit(DMF_FREEING, &md->flags));
}
