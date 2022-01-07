
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_ctx_mgr {int handles; int lock; } ;


 int XA_FLAGS_ALLOC ;
 int mutex_init (int *) ;
 int xa_init_flags (int *,int ) ;

void lima_ctx_mgr_init(struct lima_ctx_mgr *mgr)
{
 mutex_init(&mgr->lock);
 xa_init_flags(&mgr->handles, XA_FLAGS_ALLOC);
}
