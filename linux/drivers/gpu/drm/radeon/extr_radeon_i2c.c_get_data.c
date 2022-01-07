
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_i2c_bus_rec {int y_data_mask; int y_data_reg; } ;
struct radeon_i2c_chan {struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int RREG32 (int ) ;

__attribute__((used)) static int get_data(void *i2c_priv)
{
 struct radeon_i2c_chan *i2c = i2c_priv;
 struct radeon_device *rdev = i2c->dev->dev_private;
 struct radeon_i2c_bus_rec *rec = &i2c->rec;
 uint32_t val;


 val = RREG32(rec->y_data_reg);
 val &= rec->y_data_mask;

 return (val != 0);
}
