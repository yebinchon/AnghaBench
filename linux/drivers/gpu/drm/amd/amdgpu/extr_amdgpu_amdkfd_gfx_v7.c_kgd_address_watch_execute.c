
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid; } ;
union TCP_WATCH_CNTL_BITS {int u32All; TYPE_1__ bitfields; } ;
typedef int uint32_t ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 unsigned int ADDRESS_WATCH_REG_ADDR_HI ;
 unsigned int ADDRESS_WATCH_REG_ADDR_LO ;
 unsigned int ADDRESS_WATCH_REG_CNTL ;
 unsigned int ADDRESS_WATCH_REG_MAX ;
 int WREG32 (int ,int ) ;
 struct amdgpu_device* get_amdgpu_device (struct kgd_dev*) ;
 int * watchRegs ;

__attribute__((used)) static int kgd_address_watch_execute(struct kgd_dev *kgd,
     unsigned int watch_point_id,
     uint32_t cntl_val,
     uint32_t addr_hi,
     uint32_t addr_lo)
{
 struct amdgpu_device *adev = get_amdgpu_device(kgd);
 union TCP_WATCH_CNTL_BITS cntl;

 cntl.u32All = cntl_val;


 cntl.bitfields.valid = 0;
 WREG32(watchRegs[watch_point_id * ADDRESS_WATCH_REG_MAX +
  ADDRESS_WATCH_REG_CNTL], cntl.u32All);

 WREG32(watchRegs[watch_point_id * ADDRESS_WATCH_REG_MAX +
  ADDRESS_WATCH_REG_ADDR_HI], addr_hi);

 WREG32(watchRegs[watch_point_id * ADDRESS_WATCH_REG_MAX +
  ADDRESS_WATCH_REG_ADDR_LO], addr_lo);


 cntl.bitfields.valid = 1;

 WREG32(watchRegs[watch_point_id * ADDRESS_WATCH_REG_MAX +
  ADDRESS_WATCH_REG_CNTL], cntl.u32All);

 return 0;
}
