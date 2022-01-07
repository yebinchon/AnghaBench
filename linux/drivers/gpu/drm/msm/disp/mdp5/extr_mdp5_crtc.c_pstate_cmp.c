
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct plane_state {TYPE_1__* state; } ;
struct TYPE_2__ {int zpos; } ;



__attribute__((used)) static int pstate_cmp(const void *a, const void *b)
{
 struct plane_state *pa = (struct plane_state *)a;
 struct plane_state *pb = (struct plane_state *)b;
 return pa->state->zpos - pb->state->zpos;
}
