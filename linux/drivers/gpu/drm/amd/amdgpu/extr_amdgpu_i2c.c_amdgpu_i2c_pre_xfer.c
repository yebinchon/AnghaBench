
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_i2c_bus_rec {int a_clk_mask; int a_data_mask; int en_clk_mask; int en_data_mask; int mask_clk_mask; int mask_data_mask; int mask_data_reg; int mask_clk_reg; int en_data_reg; int en_clk_reg; int a_data_reg; int a_clk_reg; scalar_t__ hw_capable; } ;
struct amdgpu_i2c_chan {int mutex; struct amdgpu_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct amdgpu_i2c_chan* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static int amdgpu_i2c_pre_xfer(struct i2c_adapter *i2c_adap)
{
 struct amdgpu_i2c_chan *i2c = i2c_get_adapdata(i2c_adap);
 struct amdgpu_device *adev = i2c->dev->dev_private;
 struct amdgpu_i2c_bus_rec *rec = &i2c->rec;
 uint32_t temp;

 mutex_lock(&i2c->mutex);


 if (rec->hw_capable) {
  temp = RREG32(rec->mask_clk_reg);
  temp &= ~(1 << 16);
  WREG32(rec->mask_clk_reg, temp);
 }


 temp = RREG32(rec->a_clk_reg) & ~rec->a_clk_mask;
 WREG32(rec->a_clk_reg, temp);

 temp = RREG32(rec->a_data_reg) & ~rec->a_data_mask;
 WREG32(rec->a_data_reg, temp);


 temp = RREG32(rec->en_clk_reg) & ~rec->en_clk_mask;
 WREG32(rec->en_clk_reg, temp);

 temp = RREG32(rec->en_data_reg) & ~rec->en_data_mask;
 WREG32(rec->en_data_reg, temp);


 temp = RREG32(rec->mask_clk_reg) | rec->mask_clk_mask;
 WREG32(rec->mask_clk_reg, temp);
 temp = RREG32(rec->mask_clk_reg);

 temp = RREG32(rec->mask_data_reg) | rec->mask_data_mask;
 WREG32(rec->mask_data_reg, temp);
 temp = RREG32(rec->mask_data_reg);

 return 0;
}
