
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_seq {int state; } ;
struct nvkm_msgqueue {struct nvkm_msgqueue_seq* seq; int seq_lock; int seq_tbl; TYPE_1__* falcon; } ;
struct TYPE_2__ {struct nvkm_subdev* owner; } ;


 int EAGAIN ;
 struct nvkm_msgqueue_seq* ERR_PTR (int ) ;
 size_t NVKM_MSGQUEUE_NUM_SEQUENCES ;
 int SEQ_STATE_PENDING ;
 size_t find_first_zero_bit (int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvkm_error (struct nvkm_subdev const*,char*) ;
 int set_bit (size_t,int ) ;

__attribute__((used)) static struct nvkm_msgqueue_seq *
msgqueue_seq_acquire(struct nvkm_msgqueue *priv)
{
 const struct nvkm_subdev *subdev = priv->falcon->owner;
 struct nvkm_msgqueue_seq *seq;
 u32 index;

 mutex_lock(&priv->seq_lock);

 index = find_first_zero_bit(priv->seq_tbl, NVKM_MSGQUEUE_NUM_SEQUENCES);

 if (index >= NVKM_MSGQUEUE_NUM_SEQUENCES) {
  nvkm_error(subdev, "no free sequence available\n");
  mutex_unlock(&priv->seq_lock);
  return ERR_PTR(-EAGAIN);
 }

 set_bit(index, priv->seq_tbl);

 mutex_unlock(&priv->seq_lock);

 seq = &priv->seq[index];
 seq->state = SEQ_STATE_PENDING;

 return seq;
}
