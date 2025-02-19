
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 scalar_t__ RREG32 (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int acquire_queue (struct kgd_dev*,scalar_t__,scalar_t__) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 scalar_t__ lower_32_bits (int) ;
 int mmCP_HQD_ACTIVE ;
 int mmCP_HQD_PQ_BASE ;
 int mmCP_HQD_PQ_BASE_HI ;
 int release_queue (struct kgd_dev*) ;
 scalar_t__ upper_32_bits (int) ;

__attribute__((used)) static bool kgd_hqd_is_occupied(struct kgd_dev *kgd, uint64_t queue_address,
    uint32_t pipe_id, uint32_t queue_id)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t act;
 bool retval = 0;
 uint32_t low, high;

 acquire_queue(kgd, pipe_id, queue_id);
 act = RREG32(SOC15_REG_OFFSET(GC, 0, mmCP_HQD_ACTIVE));
 if (act) {
  low = lower_32_bits(queue_address >> 8);
  high = upper_32_bits(queue_address >> 8);

  if (low == RREG32(SOC15_REG_OFFSET(GC, 0, mmCP_HQD_PQ_BASE)) &&
     high == RREG32(SOC15_REG_OFFSET(GC, 0, mmCP_HQD_PQ_BASE_HI)))
   retval = 1;
 }
 release_queue(kgd);
 return retval;
}
