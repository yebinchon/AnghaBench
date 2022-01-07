
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int can_destroy; int refcount; } ;


 int complete (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static void thin_put(struct thin_c *tc)
{
 if (refcount_dec_and_test(&tc->refcount))
  complete(&tc->can_destroy);
}
