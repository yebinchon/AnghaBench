
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int vm_id; } ;
union SQ_CMD_BITS {scalar_t__ u32All; TYPE_2__ bits; } ;
union GRBM_GFX_INDEX_BITS {int u32All; } ;
struct kfd_process_device {int dummy; } ;
struct kfd_process {int pasid; } ;
struct TYPE_4__ {int first_vmid_kfd; int last_vmid_kfd; } ;
struct kfd_dev {int kgd; TYPE_3__* kfd2kgd; TYPE_1__ vm_info; } ;
struct dbg_wave_control_info {int operand; int mode; } ;
struct TYPE_6__ {int (* wave_control_execute ) (int ,int ,scalar_t__) ;int (* get_atc_vmid_pasid_mapping_pasid ) (int ,unsigned int) ;scalar_t__ (* get_atc_vmid_pasid_mapping_valid ) (int ,unsigned int) ;} ;


 int EFAULT ;
 int EINVAL ;
 int HSA_DBG_WAVEMODE_BROADCAST_PROCESS ;
 int HSA_DBG_WAVEOP_KILL ;
 int dbgdev_wave_control_set_registers (struct dbg_wave_control_info*,union SQ_CMD_BITS*,union GRBM_GFX_INDEX_BITS*) ;
 struct kfd_process_device* kfd_get_process_device_data (struct kfd_dev*,struct kfd_process*) ;
 int pr_debug (char*,...) ;
 int pr_err (char*,int ) ;
 scalar_t__ stub1 (int ,unsigned int) ;
 int stub2 (int ,unsigned int) ;
 int stub3 (int ,int ,scalar_t__) ;

int dbgdev_wave_reset_wavefronts(struct kfd_dev *dev, struct kfd_process *p)
{
 int status = 0;
 unsigned int vmid;
 union SQ_CMD_BITS reg_sq_cmd;
 union GRBM_GFX_INDEX_BITS reg_gfx_index;
 struct kfd_process_device *pdd;
 struct dbg_wave_control_info wac_info;
 int first_vmid_to_scan = dev->vm_info.first_vmid_kfd;
 int last_vmid_to_scan = dev->vm_info.last_vmid_kfd;

 reg_sq_cmd.u32All = 0;
 status = 0;

 wac_info.mode = HSA_DBG_WAVEMODE_BROADCAST_PROCESS;
 wac_info.operand = HSA_DBG_WAVEOP_KILL;

 pr_debug("Killing all process wavefronts\n");






 for (vmid = first_vmid_to_scan; vmid <= last_vmid_to_scan; vmid++) {
  if (dev->kfd2kgd->get_atc_vmid_pasid_mapping_valid
    (dev->kgd, vmid)) {
   if (dev->kfd2kgd->get_atc_vmid_pasid_mapping_pasid
     (dev->kgd, vmid) == p->pasid) {
    pr_debug("Killing wave fronts of vmid %d and pasid %d\n",
      vmid, p->pasid);
    break;
   }
  }
 }

 if (vmid > last_vmid_to_scan) {
  pr_err("Didn't find vmid for pasid %d\n", p->pasid);
  return -EFAULT;
 }


 pdd = kfd_get_process_device_data(dev, p);
 if (!pdd)
  return -EFAULT;

 status = dbgdev_wave_control_set_registers(&wac_info, &reg_sq_cmd,
   &reg_gfx_index);
 if (status != 0)
  return -EINVAL;


 reg_sq_cmd.bits.vm_id = vmid;

 dev->kfd2kgd->wave_control_execute(dev->kgd,
     reg_gfx_index.u32All,
     reg_sq_cmd.u32All);

 return 0;
}
