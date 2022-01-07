
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct viommu_event {int head; int fault; } ;
struct viommu_dev {int dev; } ;
struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct viommu_dev* priv; } ;


 int GFP_ATOMIC ;
 int VIOMMU_FAULT_RESV_MASK ;
 int dev_err (int ,char*,...) ;
 int sg_init_one (struct scatterlist*,struct viommu_event*,int) ;
 int viommu_fault_handler (struct viommu_dev*,int *) ;
 int virtqueue_add_inbuf (struct virtqueue*,struct scatterlist*,int,struct viommu_event*,int ) ;
 struct viommu_event* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static void viommu_event_handler(struct virtqueue *vq)
{
 int ret;
 unsigned int len;
 struct scatterlist sg[1];
 struct viommu_event *evt;
 struct viommu_dev *viommu = vq->vdev->priv;

 while ((evt = virtqueue_get_buf(vq, &len)) != ((void*)0)) {
  if (len > sizeof(*evt)) {
   dev_err(viommu->dev,
    "invalid event buffer (len %u != %zu)\n",
    len, sizeof(*evt));
  } else if (!(evt->head & VIOMMU_FAULT_RESV_MASK)) {
   viommu_fault_handler(viommu, &evt->fault);
  }

  sg_init_one(sg, evt, sizeof(*evt));
  ret = virtqueue_add_inbuf(vq, sg, 1, evt, GFP_ATOMIC);
  if (ret)
   dev_err(viommu->dev, "could not add event buffer\n");
 }

 virtqueue_kick(vq);
}
