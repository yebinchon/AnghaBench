
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_msgqueue_queue {int position; } ;
struct nvkm_msgqueue {int falcon; } ;


 scalar_t__ ALIGN (int ,int ) ;
 int QUEUE_ALIGNMENT ;
 int nvkm_falcon_load_dmem (int ,void*,int ,int ,int ) ;

__attribute__((used)) static int
cmd_queue_push(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue,
        void *data, u32 size)
{
 nvkm_falcon_load_dmem(priv->falcon, data, queue->position, size, 0);
 queue->position += ALIGN(size, QUEUE_ALIGNMENT);

 return 0;
}
