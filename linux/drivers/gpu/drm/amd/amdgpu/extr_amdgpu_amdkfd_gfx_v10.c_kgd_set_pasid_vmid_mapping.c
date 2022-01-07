
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 unsigned int ATC_VMID0_PASID_MAPPING__VALID_MASK ;
 int ATHUB ;
 int OSSSYS ;
 unsigned int RREG32 (unsigned int) ;
 unsigned int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (unsigned int,unsigned int) ;
 int cpu_relax () ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int mmATC_VMID0_PASID_MAPPING ;
 int mmATC_VMID_PASID_MAPPING_UPDATE_STATUS ;
 int mmIH_VMID_0_LUT ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int kgd_set_pasid_vmid_mapping(struct kgd_dev *kgd, unsigned int pasid,
     unsigned int vmid)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 uint32_t pasid_mapping = (pasid == 0) ? 0 : (uint32_t)pasid |
   ATC_VMID0_PASID_MAPPING__VALID_MASK;

 pr_debug("pasid 0x%x vmid %d, reg value %x\n", pasid, vmid, pasid_mapping);






 pr_debug("ATHUB, reg %x\n", SOC15_REG_OFFSET(ATHUB, 0, mmATC_VMID0_PASID_MAPPING) + vmid);
 WREG32(SOC15_REG_OFFSET(ATHUB, 0, mmATC_VMID0_PASID_MAPPING) + vmid,
        pasid_mapping);
 pr_debug("update mapping for IH block and mmhub");
 WREG32(SOC15_REG_OFFSET(OSSSYS, 0, mmIH_VMID_0_LUT) + vmid,
        pasid_mapping);

 return 0;
}
