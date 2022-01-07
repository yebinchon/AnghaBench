
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_queue {int offset; int position; int index; } ;
struct nvkm_msgqueue_hdr {int size; int unit_id; } ;
struct nvkm_msgqueue {TYPE_1__* falcon; } ;
typedef int cmd ;
struct TYPE_2__ {struct nvkm_subdev* owner; } ;


 int MSGQUEUE_UNIT_REWIND ;
 int cmd_queue_push (struct nvkm_msgqueue*,struct nvkm_msgqueue_queue*,struct nvkm_msgqueue_hdr*,int) ;
 int nvkm_error (struct nvkm_subdev const*,char*,int ) ;

__attribute__((used)) static void
cmd_queue_rewind(struct nvkm_msgqueue *priv, struct nvkm_msgqueue_queue *queue)
{
 const struct nvkm_subdev *subdev = priv->falcon->owner;
 struct nvkm_msgqueue_hdr cmd;
 int err;

 cmd.unit_id = MSGQUEUE_UNIT_REWIND;
 cmd.size = sizeof(cmd);
 err = cmd_queue_push(priv, queue, &cmd, cmd.size);
 if (err)
  nvkm_error(subdev, "queue %d rewind failed\n", queue->index);
 else
  nvkm_error(subdev, "queue %d rewinded\n", queue->index);

 queue->position = queue->offset;
}
