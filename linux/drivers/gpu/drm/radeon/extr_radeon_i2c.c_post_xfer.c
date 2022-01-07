
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_i2c_bus_rec {int mask_clk_mask; int mask_data_mask; int mask_data_reg; int mask_clk_reg; } ;
struct radeon_i2c_chan {int mutex; struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct radeon_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct radeon_i2c_chan* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void post_xfer(struct i2c_adapter *i2c_adap)
{
 struct radeon_i2c_chan *i2c = i2c_get_adapdata(i2c_adap);
 struct radeon_device *rdev = i2c->dev->dev_private;
 struct radeon_i2c_bus_rec *rec = &i2c->rec;
 uint32_t temp;


 temp = RREG32(rec->mask_clk_reg) & ~rec->mask_clk_mask;
 WREG32(rec->mask_clk_reg, temp);
 temp = RREG32(rec->mask_clk_reg);

 temp = RREG32(rec->mask_data_reg) & ~rec->mask_data_mask;
 WREG32(rec->mask_data_reg, temp);
 temp = RREG32(rec->mask_data_reg);

 mutex_unlock(&i2c->mutex);
}
