
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_i2c_bus_rec {int en_data_mask; int en_data_reg; } ;
struct amdgpu_i2c_chan {struct amdgpu_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;

__attribute__((used)) static void amdgpu_i2c_set_data(void *i2c_priv, int data)
{
 struct amdgpu_i2c_chan *i2c = i2c_priv;
 struct amdgpu_device *adev = i2c->dev->dev_private;
 struct amdgpu_i2c_bus_rec *rec = &i2c->rec;
 uint32_t val;


 val = RREG32(rec->en_data_reg) & ~rec->en_data_mask;
 val |= data ? 0 : rec->en_data_mask;
 WREG32(rec->en_data_reg, val);
}
