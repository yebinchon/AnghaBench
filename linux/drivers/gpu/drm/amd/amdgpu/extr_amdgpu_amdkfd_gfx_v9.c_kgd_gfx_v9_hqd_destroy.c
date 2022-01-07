
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct v9_mqd {scalar_t__ cp_hqd_vmid; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {scalar_t__ in_gpu_reset; } ;
typedef enum kfd_preempt_type { ____Placeholder_kfd_preempt_type } kfd_preempt_type ;
typedef enum hqd_dequeue_request_type { ____Placeholder_hqd_dequeue_request_type } hqd_dequeue_request_type ;


 int CP_HQD_ACTIVE__ACTIVE_MASK ;
 int DRAIN_PIPE ;
 int EIO ;
 int ETIME ;
 int GC ;
 unsigned int HZ ;


 int RESET_WAVES ;
 int RLC_CP_SCHEDULERS ;
 int RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_FIELD15_RLC (int ,int ,int ,int ,int ) ;
 int WREG32_RLC (int ,int) ;
 int acquire_queue (struct kgd_dev*,int,int) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 struct v9_mqd* get_mqd (void*) ;
 unsigned int jiffies ;
 int mmCP_HQD_ACTIVE ;
 int mmCP_HQD_DEQUEUE_REQUEST ;
 int pr_err (char*) ;
 int release_queue (struct kgd_dev*) ;
 int scheduler1 ;
 scalar_t__ time_after (unsigned int,unsigned long) ;
 int usleep_range (int,int) ;

int kgd_gfx_v9_hqd_destroy(struct kgd_dev *kgd, void *mqd,
    enum kfd_preempt_type reset_type,
    unsigned int utimeout, uint32_t pipe_id,
    uint32_t queue_id)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 enum hqd_dequeue_request_type type;
 unsigned long end_jiffies;
 uint32_t temp;
 struct v9_mqd *m = get_mqd(mqd);

 if (adev->in_gpu_reset)
  return -EIO;

 acquire_queue(kgd, pipe_id, queue_id);

 if (m->cp_hqd_vmid == 0)
  WREG32_FIELD15_RLC(GC, 0, RLC_CP_SCHEDULERS, scheduler1, 0);

 switch (reset_type) {
 case 129:
  type = DRAIN_PIPE;
  break;
 case 128:
  type = RESET_WAVES;
  break;
 default:
  type = DRAIN_PIPE;
  break;
 }

 WREG32_RLC(SOC15_REG_OFFSET(GC, 0, mmCP_HQD_DEQUEUE_REQUEST), type);

 end_jiffies = (utimeout * HZ / 1000) + jiffies;
 while (1) {
  temp = RREG32(SOC15_REG_OFFSET(GC, 0, mmCP_HQD_ACTIVE));
  if (!(temp & CP_HQD_ACTIVE__ACTIVE_MASK))
   break;
  if (time_after(jiffies, end_jiffies)) {
   pr_err("cp queue preemption time out.\n");
   release_queue(kgd);
   return -ETIME;
  }
  usleep_range(500, 1000);
 }

 release_queue(kgd);
 return 0;
}
