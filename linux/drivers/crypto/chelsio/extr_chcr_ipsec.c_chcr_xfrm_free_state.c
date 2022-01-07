
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offload_handle; } ;
struct xfrm_state {TYPE_1__ xso; } ;
struct ipsec_sa_entry {int dummy; } ;


 int THIS_MODULE ;
 int kfree (struct ipsec_sa_entry*) ;
 int module_put (int ) ;

__attribute__((used)) static void chcr_xfrm_free_state(struct xfrm_state *x)
{
 struct ipsec_sa_entry *sa_entry;

 if (!x->xso.offload_handle)
  return;

 sa_entry = (struct ipsec_sa_entry *)x->xso.offload_handle;
 kfree(sa_entry);
 module_put(THIS_MODULE);
}
