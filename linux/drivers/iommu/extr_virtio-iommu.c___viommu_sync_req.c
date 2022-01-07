
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct viommu_request {size_t buf; size_t len; size_t write_offset; int list; scalar_t__ writeback; } ;
struct viommu_dev {int requests; int request_lock; struct virtqueue** vqs; } ;


 size_t VIOMMU_REQUEST_VQ ;
 int VIRTIO_IOMMU_S_IOERR ;
 int assert_spin_locked (int *) ;
 int kfree (struct viommu_request*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int memcpy (scalar_t__,size_t,size_t) ;
 int viommu_set_req_status (size_t,size_t,int ) ;
 struct viommu_request* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static int __viommu_sync_req(struct viommu_dev *viommu)
{
 int ret = 0;
 unsigned int len;
 size_t write_len;
 struct viommu_request *req;
 struct virtqueue *vq = viommu->vqs[VIOMMU_REQUEST_VQ];

 assert_spin_locked(&viommu->request_lock);

 virtqueue_kick(vq);

 while (!list_empty(&viommu->requests)) {
  len = 0;
  req = virtqueue_get_buf(vq, &len);
  if (!req)
   continue;

  if (!len)
   viommu_set_req_status(req->buf, req->len,
           VIRTIO_IOMMU_S_IOERR);

  write_len = req->len - req->write_offset;
  if (req->writeback && len == write_len)
   memcpy(req->writeback, req->buf + req->write_offset,
          write_len);

  list_del(&req->list);
  kfree(req);
 }

 return ret;
}
