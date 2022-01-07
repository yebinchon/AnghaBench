
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct s10_priv {TYPE_1__* svc_bufs; int chan; } ;
struct fpga_manager {struct s10_priv* priv; } ;
struct TYPE_2__ {int * buf; int lock; } ;


 size_t NUM_SVC_BUFS ;
 int SVC_BUF_LOCK ;
 int stratix10_svc_free_memory (int ,int *) ;
 int test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static bool s10_free_buffers(struct fpga_manager *mgr)
{
 struct s10_priv *priv = mgr->priv;
 uint num_free = 0;
 uint i;

 for (i = 0; i < NUM_SVC_BUFS; i++) {
  if (!priv->svc_bufs[i].buf) {
   num_free++;
   continue;
  }

  if (!test_and_set_bit_lock(SVC_BUF_LOCK,
        &priv->svc_bufs[i].lock)) {
   stratix10_svc_free_memory(priv->chan,
        priv->svc_bufs[i].buf);
   priv->svc_bufs[i].buf = ((void*)0);
   num_free++;
  }
 }

 return num_free == NUM_SVC_BUFS;
}
