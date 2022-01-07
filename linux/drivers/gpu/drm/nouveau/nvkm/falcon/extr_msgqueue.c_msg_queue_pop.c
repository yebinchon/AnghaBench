
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_queue {scalar_t__ position; scalar_t__ offset; int head_reg; } ;
struct nvkm_msgqueue {struct nvkm_falcon* falcon; } ;
struct nvkm_falcon {struct nvkm_subdev* owner; } ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int QUEUE_ALIGNMENT ;
 scalar_t__ nvkm_falcon_rd32 (struct nvkm_falcon*,int ) ;
 int nvkm_falcon_read_dmem (struct nvkm_falcon*,scalar_t__,scalar_t__,int ,void*) ;
 int nvkm_warn (struct nvkm_subdev const*,char*) ;

__attribute__((used)) static int
msg_queue_pop(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
       void *data, u32 size)
{
 struct nvkm_falcon *falcon = priv->falcon;
 const struct nvkm_subdev *subdev = priv->falcon->owner;
 u32 head, tail, available;

 head = nvkm_falcon_rd32(falcon, queue->head_reg);

 if (head < queue->position)
  queue->position = queue->offset;

 tail = queue->position;

 available = head - tail;

 if (available == 0) {
  nvkm_warn(subdev, "no message data available\n");
  return 0;
 }

 if (size > available) {
  nvkm_warn(subdev, "message data smaller than read request\n");
  size = available;
 }

 nvkm_falcon_read_dmem(priv->falcon, tail, size, 0, data);
 queue->position += ALIGN(size, QUEUE_ALIGNMENT);

 return size;
}
