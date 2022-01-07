
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_msgqueue_seq {int id; int * completion; int * callback; int state; } ;
struct nvkm_msgqueue {int seq_tbl; } ;


 int SEQ_STATE_FREE ;
 int clear_bit (int ,int ) ;

__attribute__((used)) static void
msgqueue_seq_release(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_seq *seq)
{

 seq->state = SEQ_STATE_FREE;
 seq->callback = ((void*)0);
 seq->completion = ((void*)0);
 clear_bit(seq->id, priv->seq_tbl);
}
