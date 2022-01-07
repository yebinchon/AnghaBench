
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg216x_state {TYPE_1__* cfg; } ;
struct TYPE_2__ {int lg_chip; } ;


 int EINVAL ;


 int lg2160_read_lock_status (struct lg216x_state*,int*,int*) ;
 int lg2161_read_lock_status (struct lg216x_state*,int*,int*) ;

__attribute__((used)) static int lg216x_read_lock_status(struct lg216x_state *state,
       int *acq_lock, int *sync_lock)
{
 return lg2160_read_lock_status(state, acq_lock, sync_lock);

}
