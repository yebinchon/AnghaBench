
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwspinlock {TYPE_1__* bank; } ;
struct TYPE_2__ {int base_id; struct hwspinlock* lock; } ;



__attribute__((used)) static inline int hwlock_to_id(struct hwspinlock *hwlock)
{
 int local_id = hwlock - &hwlock->bank->lock[0];

 return hwlock->bank->base_id + local_id;
}
