
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct radeon_i2c_bus_rec {int valid; } ;
struct radeon_device {struct drm_device* ddev; } ;
struct drm_device {int dummy; } ;


 int COMBIOS_I2C_INFO_TABLE ;
 int DDC_MONID ;
 int RBIOS8 (scalar_t__) ;
 scalar_t__ combios_get_table_offset (struct drm_device*,int ) ;
 struct radeon_i2c_bus_rec combios_setup_i2c_bus (struct radeon_device*,int ,int,int) ;

__attribute__((used)) static struct radeon_i2c_bus_rec radeon_combios_get_i2c_info_from_table(struct radeon_device *rdev)
{
 struct drm_device *dev = rdev->ddev;
 struct radeon_i2c_bus_rec i2c;
 u16 offset;
 u8 id, blocks, clk, data;
 int i;

 i2c.valid = 0;

 offset = combios_get_table_offset(dev, COMBIOS_I2C_INFO_TABLE);
 if (offset) {
  blocks = RBIOS8(offset + 2);
  for (i = 0; i < blocks; i++) {
   id = RBIOS8(offset + 3 + (i * 5) + 0);
   if (id == 136) {
    clk = RBIOS8(offset + 3 + (i * 5) + 3);
    data = RBIOS8(offset + 3 + (i * 5) + 4);

    i2c = combios_setup_i2c_bus(rdev, DDC_MONID,
           (1 << clk), (1 << data));
    break;
   }
  }
 }
 return i2c;
}
