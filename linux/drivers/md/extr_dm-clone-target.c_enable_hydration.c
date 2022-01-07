
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int flags; } ;


 int DM_CLONE_HYDRATION_ENABLED ;
 int test_and_set_bit (int ,int *) ;
 int wake_worker (struct clone*) ;

__attribute__((used)) static void enable_hydration(struct clone *clone)
{
 if (!test_and_set_bit(DM_CLONE_HYDRATION_ENABLED, &clone->flags))
  wake_worker(clone);
}
