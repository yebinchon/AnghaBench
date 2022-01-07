
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct s10_priv {TYPE_1__* svc_bufs; } ;
struct TYPE_2__ {void* buf; int lock; } ;


 size_t NUM_SVC_BUFS ;
 int SVC_BUF_LOCK ;
 int WARN (int,char*,void*) ;
 int clear_bit_unlock (int ,int *) ;

__attribute__((used)) static void s10_unlock_bufs(struct s10_priv *priv, void *kaddr)
{
 uint i;

 if (!kaddr)
  return;

 for (i = 0; i < NUM_SVC_BUFS; i++)
  if (priv->svc_bufs[i].buf == kaddr) {
   clear_bit_unlock(SVC_BUF_LOCK,
      &priv->svc_bufs[i].lock);
   return;
  }

 WARN(1, "Unknown buffer returned from service layer %p\n", kaddr);
}
