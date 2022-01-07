
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; } ;


 int DMF_NOFLUSH_SUSPENDING ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int __noflush_suspending(struct mapped_device *md)
{
 return test_bit(DMF_NOFLUSH_SUSPENDING, &md->flags);
}
