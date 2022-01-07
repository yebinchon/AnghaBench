
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct virtio_iommu_req_tail {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct virtio_iommu_req_probe {scalar_t__ properties; int endpoint; TYPE_1__ head; } ;
struct virtio_iommu_probe_property {int type; int length; } ;
struct viommu_endpoint {int dummy; } ;
struct viommu_dev {int probe_size; } ;
struct iommu_fwspec {int * ids; int num_ids; struct viommu_endpoint* iommu_priv; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VIRTIO_IOMMU_PROBE_T_MASK ;
 int VIRTIO_IOMMU_PROBE_T_NONE ;

 int VIRTIO_IOMMU_T_PROBE ;
 int cpu_to_le32 (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int kfree (struct virtio_iommu_req_probe*) ;
 struct virtio_iommu_req_probe* kzalloc (size_t,int ) ;
 int le16_to_cpu (int ) ;
 int viommu_add_resv_mem (struct viommu_endpoint*,void*,int) ;
 int viommu_send_req_sync (struct viommu_dev*,struct virtio_iommu_req_probe*,size_t) ;

__attribute__((used)) static int viommu_probe_endpoint(struct viommu_dev *viommu, struct device *dev)
{
 int ret;
 u16 type, len;
 size_t cur = 0;
 size_t probe_len;
 struct virtio_iommu_req_probe *probe;
 struct virtio_iommu_probe_property *prop;
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 struct viommu_endpoint *vdev = fwspec->iommu_priv;

 if (!fwspec->num_ids)
  return -EINVAL;

 probe_len = sizeof(*probe) + viommu->probe_size +
      sizeof(struct virtio_iommu_req_tail);
 probe = kzalloc(probe_len, GFP_KERNEL);
 if (!probe)
  return -ENOMEM;

 probe->head.type = VIRTIO_IOMMU_T_PROBE;




 probe->endpoint = cpu_to_le32(fwspec->ids[0]);

 ret = viommu_send_req_sync(viommu, probe, probe_len);
 if (ret)
  goto out_free;

 prop = (void *)probe->properties;
 type = le16_to_cpu(prop->type) & VIRTIO_IOMMU_PROBE_T_MASK;

 while (type != VIRTIO_IOMMU_PROBE_T_NONE &&
        cur < viommu->probe_size) {
  len = le16_to_cpu(prop->length) + sizeof(*prop);

  switch (type) {
  case 128:
   ret = viommu_add_resv_mem(vdev, (void *)prop, len);
   break;
  default:
   dev_err(dev, "unknown viommu prop 0x%x\n", type);
  }

  if (ret)
   dev_err(dev, "failed to parse viommu prop 0x%x\n", type);

  cur += len;
  if (cur >= viommu->probe_size)
   break;

  prop = (void *)probe->properties + cur;
  type = le16_to_cpu(prop->type) & VIRTIO_IOMMU_PROBE_T_MASK;
 }

out_free:
 kfree(probe);
 return ret;
}
