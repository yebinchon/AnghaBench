
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct clone* private; } ;
struct TYPE_2__ {int work; } ;
struct clone {TYPE_1__ waker; int flags; } ;


 int DM_CLONE_HYDRATION_SUSPENDED ;
 int clear_bit (int ,int *) ;
 int do_waker (int *) ;

__attribute__((used)) static void clone_resume(struct dm_target *ti)
{
 struct clone *clone = ti->private;

 clear_bit(DM_CLONE_HYDRATION_SUSPENDED, &clone->flags);
 do_waker(&clone->waker.work);
}
