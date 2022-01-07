
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; } ;


 int DMF_SUSPENDED_INTERNALLY ;
 int test_bit (int ,int *) ;

int dm_suspended_internally_md(struct mapped_device *md)
{
 return test_bit(DMF_SUSPENDED_INTERNALLY, &md->flags);
}
