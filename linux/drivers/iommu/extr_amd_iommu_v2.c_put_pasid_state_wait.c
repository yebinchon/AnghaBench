
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_state {int count; int wq; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int free_pasid_state (struct pasid_state*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void put_pasid_state_wait(struct pasid_state *pasid_state)
{
 atomic_dec(&pasid_state->count);
 wait_event(pasid_state->wq, !atomic_read(&pasid_state->count));
 free_pasid_state(pasid_state);
}
