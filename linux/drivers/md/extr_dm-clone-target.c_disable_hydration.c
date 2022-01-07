
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int flags; } ;


 int DM_CLONE_HYDRATION_ENABLED ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void disable_hydration(struct clone *clone)
{
 clear_bit(DM_CLONE_HYDRATION_ENABLED, &clone->flags);
}
