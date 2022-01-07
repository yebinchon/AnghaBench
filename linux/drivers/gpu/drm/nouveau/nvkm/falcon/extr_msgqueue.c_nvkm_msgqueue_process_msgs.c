
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvkm_msgqueue_queue {int dummy; } ;
struct nvkm_msgqueue_hdr {int dummy; } ;
struct nvkm_msgqueue {int init_msg_received; } ;


 int MSG_BUF_SIZE ;
 scalar_t__ msg_queue_read (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,struct nvkm_msgqueue_hdr*) ;
 int msgqueue_handle_init_msg (struct nvkm_msgqueue*,struct nvkm_msgqueue_hdr*) ;
 int msgqueue_msg_handle (struct nvkm_msgqueue*,struct nvkm_msgqueue_hdr*) ;

void
nvkm_msgqueue_process_msgs(struct nvkm_msgqueue *priv,
      struct nvkm_msgqueue_queue *queue)
{




 u8 msg_buffer[MSG_BUF_SIZE];
 struct nvkm_msgqueue_hdr *hdr = (void *)msg_buffer;
 int ret;


 if ((!priv->init_msg_received)) {
  ret = msgqueue_handle_init_msg(priv, hdr);
  if (!ret)
   priv->init_msg_received = 1;
 } else {
  while (msg_queue_read(priv, queue, hdr) > 0)
   msgqueue_msg_handle(priv, hdr);
 }
}
