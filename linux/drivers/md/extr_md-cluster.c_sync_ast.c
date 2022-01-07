
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int sync_locking_done; int sync_locking; } ;


 int wake_up (int *) ;

__attribute__((used)) static void sync_ast(void *arg)
{
 struct dlm_lock_resource *res;

 res = arg;
 res->sync_locking_done = 1;
 wake_up(&res->sync_locking);
}
