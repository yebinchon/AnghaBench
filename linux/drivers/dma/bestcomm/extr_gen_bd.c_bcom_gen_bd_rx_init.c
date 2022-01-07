
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcom_task {struct bcom_gen_bd_priv* priv; int flags; } ;
struct bcom_gen_bd_priv {int initiator; int ipr; int maxbufsize; int fifo; } ;
struct bcom_gen_bd {int dummy; } ;
typedef int phys_addr_t ;


 int BCOM_FLAGS_NONE ;
 scalar_t__ bcom_gen_bd_rx_reset (struct bcom_task*) ;
 struct bcom_task* bcom_task_alloc (int,int,int) ;
 int bcom_task_free (struct bcom_task*) ;

struct bcom_task *
bcom_gen_bd_rx_init(int queue_len, phys_addr_t fifo,
   int initiator, int ipr, int maxbufsize)
{
 struct bcom_task *tsk;
 struct bcom_gen_bd_priv *priv;

 tsk = bcom_task_alloc(queue_len, sizeof(struct bcom_gen_bd),
   sizeof(struct bcom_gen_bd_priv));
 if (!tsk)
  return ((void*)0);

 tsk->flags = BCOM_FLAGS_NONE;

 priv = tsk->priv;
 priv->fifo = fifo;
 priv->initiator = initiator;
 priv->ipr = ipr;
 priv->maxbufsize = maxbufsize;

 if (bcom_gen_bd_rx_reset(tsk)) {
  bcom_task_free(tsk);
  return ((void*)0);
 }

 return tsk;
}
