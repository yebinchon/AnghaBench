
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usnic_ib_pd {void* umem_pd; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR_OR_NULL (void*) ;
 int PTR_ERR (void*) ;
 struct usnic_ib_pd* to_upd (struct ib_pd*) ;
 void* usnic_uiom_alloc_pd () ;

int usnic_ib_alloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct usnic_ib_pd *pd = to_upd(ibpd);
 void *umem_pd;

 umem_pd = pd->umem_pd = usnic_uiom_alloc_pd();
 if (IS_ERR_OR_NULL(umem_pd)) {
  return umem_pd ? PTR_ERR(umem_pd) : -ENOMEM;
 }

 return 0;
}
