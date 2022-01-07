
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcast_member {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static void deref_member(struct mcast_member *member)
{
 if (atomic_dec_and_test(&member->refcount))
  complete(&member->comp);
}
