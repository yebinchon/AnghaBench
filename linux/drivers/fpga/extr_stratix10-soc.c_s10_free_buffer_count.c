
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
struct s10_priv {TYPE_1__* svc_bufs; } ;
struct fpga_manager {struct s10_priv* priv; } ;
struct TYPE_2__ {int buf; } ;


 size_t NUM_SVC_BUFS ;

__attribute__((used)) static uint s10_free_buffer_count(struct fpga_manager *mgr)
{
 struct s10_priv *priv = mgr->priv;
 uint num_free = 0;
 uint i;

 for (i = 0; i < NUM_SVC_BUFS; i++)
  if (!priv->svc_bufs[i].buf)
   num_free++;

 return num_free;
}
