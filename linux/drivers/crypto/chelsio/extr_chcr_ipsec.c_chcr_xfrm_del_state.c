
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int offload_handle; } ;
struct xfrm_state {TYPE_1__ xso; } ;



__attribute__((used)) static void chcr_xfrm_del_state(struct xfrm_state *x)
{

 if (!x->xso.offload_handle)
  return;
}
