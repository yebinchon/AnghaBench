
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone {int flags; } ;
typedef int ssize_t ;


 int DMEMIT (char*,...) ;
 int DM_CLONE_DISCARD_PASSDOWN ;
 int DM_CLONE_HYDRATION_ENABLED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void emit_flags(struct clone *clone, char *result, unsigned int maxlen,
         ssize_t *sz_ptr)
{
 ssize_t sz = *sz_ptr;
 unsigned int count;

 count = !test_bit(DM_CLONE_HYDRATION_ENABLED, &clone->flags);
 count += !test_bit(DM_CLONE_DISCARD_PASSDOWN, &clone->flags);

 DMEMIT("%u ", count);

 if (!test_bit(DM_CLONE_HYDRATION_ENABLED, &clone->flags))
  DMEMIT("no_hydration ");

 if (!test_bit(DM_CLONE_DISCARD_PASSDOWN, &clone->flags))
  DMEMIT("no_discard_passdown ");

 *sz_ptr = sz;
}
