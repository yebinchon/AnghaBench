
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int ib_base; int cwsr_base; } ;
struct kfd_process_device {scalar_t__ scratch_limit; scalar_t__ scratch_base; scalar_t__ gpuvm_limit; scalar_t__ gpuvm_base; scalar_t__ lds_limit; scalar_t__ lds_base; TYPE_3__* dev; TYPE_2__ qpd; } ;
struct kfd_process {scalar_t__ is_32bit_user_mode; } ;
struct kfd_dev {TYPE_1__* device_info; } ;
struct TYPE_6__ {scalar_t__ id; } ;
struct TYPE_4__ {int asic_family; int needs_iommu_device; } ;
 int EINVAL ;
 int ENOMEM ;
 int SVM_CWSR_BASE ;
 int SVM_IB_BASE ;
 int WARN (int,char*,int) ;
 int dev_dbg (int ,char*,scalar_t__) ;
 struct kfd_process_device* kfd_create_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 int kfd_device ;
 int kfd_init_apertures_v9 (struct kfd_process_device*,scalar_t__) ;
 int kfd_init_apertures_vi (struct kfd_process_device*,scalar_t__) ;
 scalar_t__ kfd_topology_enum_kfd_devices (scalar_t__,struct kfd_dev**) ;
 int pr_err (char*) ;

int kfd_init_apertures(struct kfd_process *process)
{
 uint8_t id = 0;
 struct kfd_dev *dev;
 struct kfd_process_device *pdd;


 while (kfd_topology_enum_kfd_devices(id, &dev) == 0) {
  if (!dev) {
   id++;
   continue;
  }

  pdd = kfd_create_process_device_data(dev, process);
  if (!pdd) {
   pr_err("Failed to create process device data\n");
   return -ENOMEM;
  }





  if (process->is_32bit_user_mode) {
   pdd->lds_base = pdd->lds_limit = 0;
   pdd->gpuvm_base = pdd->gpuvm_limit = 0;
   pdd->scratch_base = pdd->scratch_limit = 0;
  } else {
   switch (dev->device_info->asic_family) {
   case 138:
   case 139:
   case 141:
   case 132:
   case 140:
   case 136:
   case 135:
   case 134:
   case 128:
    kfd_init_apertures_vi(pdd, id);
    break;
   case 131:
   case 130:
   case 129:
   case 133:
   case 142:
   case 137:
    kfd_init_apertures_v9(pdd, id);
    break;
   default:
    WARN(1, "Unexpected ASIC family %u",
         dev->device_info->asic_family);
    return -EINVAL;
   }

   if (!dev->device_info->needs_iommu_device) {



    pdd->qpd.cwsr_base = SVM_CWSR_BASE;
    pdd->qpd.ib_base = SVM_IB_BASE;
   }
  }

  dev_dbg(kfd_device, "node id %u\n", id);
  dev_dbg(kfd_device, "gpu id %u\n", pdd->dev->id);
  dev_dbg(kfd_device, "lds_base %llX\n", pdd->lds_base);
  dev_dbg(kfd_device, "lds_limit %llX\n", pdd->lds_limit);
  dev_dbg(kfd_device, "gpuvm_base %llX\n", pdd->gpuvm_base);
  dev_dbg(kfd_device, "gpuvm_limit %llX\n", pdd->gpuvm_limit);
  dev_dbg(kfd_device, "scratch_base %llX\n", pdd->scratch_base);
  dev_dbg(kfd_device, "scratch_limit %llX\n", pdd->scratch_limit);

  id++;
 }

 return 0;
}
