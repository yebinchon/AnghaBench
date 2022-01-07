
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_subdev {int dummy; } ;
struct nvkm_msgqueue_msg {int dummy; } ;
struct nvkm_msgqueue_hdr {int dummy; } ;
struct nvkm_msgqueue {int init_done; TYPE_1__* falcon; } ;
struct TYPE_2__ {struct nvkm_subdev* owner; } ;


 int complete_all (int *) ;
 int nvkm_debug (struct nvkm_subdev const*,char*) ;
 int nvkm_error (struct nvkm_subdev const*,char*,scalar_t__) ;

__attribute__((used)) static void
acr_init_wpr_callback(struct nvkm_msgqueue *queue,
        struct nvkm_msgqueue_hdr *hdr)
{
 struct {
  struct nvkm_msgqueue_msg base;
  u32 error_code;
 } *msg = (void *)hdr;
 const struct nvkm_subdev *subdev = queue->falcon->owner;

 if (msg->error_code) {
  nvkm_error(subdev, "ACR WPR init failure: %d\n",
      msg->error_code);
  return;
 }

 nvkm_debug(subdev, "ACR WPR init complete\n");
 complete_all(&queue->init_done);
}
