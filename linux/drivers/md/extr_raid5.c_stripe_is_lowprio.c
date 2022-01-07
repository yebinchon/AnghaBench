
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stripe_head {int state; } ;


 int STRIPE_R5C_CACHING ;
 int STRIPE_R5C_FULL_STRIPE ;
 int STRIPE_R5C_PARTIAL_STRIPE ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool stripe_is_lowprio(struct stripe_head *sh)
{
 return (test_bit(STRIPE_R5C_FULL_STRIPE, &sh->state) ||
  test_bit(STRIPE_R5C_PARTIAL_STRIPE, &sh->state)) &&
        !test_bit(STRIPE_R5C_CACHING, &sh->state);
}
