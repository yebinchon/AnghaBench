
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct execlist_ring_context {TYPE_1__* pdps; } ;
struct TYPE_2__ {int val; } ;



__attribute__((used)) static void set_context_pdp_root_pointer(
  struct execlist_ring_context *ring_context,
  u32 pdp[8])
{
 int i;

 for (i = 0; i < 8; i++)
  ring_context->pdps[i].val = pdp[7 - i];
}
