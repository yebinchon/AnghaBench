
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int wq; int count; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void put_pasid_state(struct pasid_state *pasid_state)
{
 if (atomic_dec_and_test(&pasid_state->count))
  wake_up(&pasid_state->wq);
}
