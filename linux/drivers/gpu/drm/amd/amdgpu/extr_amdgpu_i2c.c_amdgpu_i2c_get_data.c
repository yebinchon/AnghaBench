
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_i2c_bus_rec {int y_data_mask; int y_data_reg; } ;
struct amdgpu_i2c_chan {struct amdgpu_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;


 int RREG32 (int ) ;

__attribute__((used)) static int amdgpu_i2c_get_data(void *i2c_priv)
{
 struct amdgpu_i2c_chan *i2c = i2c_priv;
 struct amdgpu_device *adev = i2c->dev->dev_private;
 struct amdgpu_i2c_bus_rec *rec = &i2c->rec;
 uint32_t val;


 val = RREG32(rec->y_data_reg);
 val &= rec->y_data_mask;

 return (val != 0);
}
