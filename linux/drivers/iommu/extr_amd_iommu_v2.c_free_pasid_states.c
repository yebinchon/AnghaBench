
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int mm; int mn; } ;
struct device_state {int max_pasids; int pasid_levels; scalar_t__ states; } ;


 int BUG_ON (int) ;
 int free_page (unsigned long) ;
 int free_pasid_states_level1 (scalar_t__) ;
 int free_pasid_states_level2 (scalar_t__) ;
 struct pasid_state* get_pasid_state (struct device_state*,int) ;
 int mmu_notifier_unregister (int *,int ) ;
 int put_device_state (struct device_state*) ;
 int put_pasid_state (struct pasid_state*) ;
 int put_pasid_state_wait (struct pasid_state*) ;

__attribute__((used)) static void free_pasid_states(struct device_state *dev_state)
{
 struct pasid_state *pasid_state;
 int i;

 for (i = 0; i < dev_state->max_pasids; ++i) {
  pasid_state = get_pasid_state(dev_state, i);
  if (pasid_state == ((void*)0))
   continue;

  put_pasid_state(pasid_state);





  mmu_notifier_unregister(&pasid_state->mn, pasid_state->mm);

  put_pasid_state_wait(pasid_state);



  put_device_state(dev_state);
 }

 if (dev_state->pasid_levels == 2)
  free_pasid_states_level2(dev_state->states);
 else if (dev_state->pasid_levels == 1)
  free_pasid_states_level1(dev_state->states);
 else
  BUG_ON(dev_state->pasid_levels != 0);

 free_page((unsigned long)dev_state->states);
}
