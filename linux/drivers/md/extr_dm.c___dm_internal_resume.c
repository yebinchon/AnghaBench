
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int flags; scalar_t__ internal_suspend_count; } ;


 int BUG_ON (int) ;
 int DMF_SUSPENDED_INTERNALLY ;
 int __dm_resume (struct mapped_device*,int *) ;
 int clear_bit (int ,int *) ;
 scalar_t__ dm_suspended_md (struct mapped_device*) ;
 int smp_mb__after_atomic () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void __dm_internal_resume(struct mapped_device *md)
{
 BUG_ON(!md->internal_suspend_count);

 if (--md->internal_suspend_count)
  return;

 if (dm_suspended_md(md))
  goto done;





 (void) __dm_resume(md, ((void*)0));

done:
 clear_bit(DMF_SUSPENDED_INTERNALLY, &md->flags);
 smp_mb__after_atomic();
 wake_up_bit(&md->flags, DMF_SUSPENDED_INTERNALLY);
}
