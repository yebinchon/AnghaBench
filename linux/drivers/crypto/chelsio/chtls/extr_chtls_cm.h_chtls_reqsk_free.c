
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_sock {TYPE_1__* rsk_ops; scalar_t__ rsk_listener; } ;
struct TYPE_2__ {int slab; } ;


 int kmem_cache_free (int ,struct request_sock*) ;
 int sock_put (scalar_t__) ;

__attribute__((used)) static inline void chtls_reqsk_free(struct request_sock *req)
{
 if (req->rsk_listener)
  sock_put(req->rsk_listener);
 kmem_cache_free(req->rsk_ops->slab, req);
}
