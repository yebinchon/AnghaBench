
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int i2c; } ;


 int intel_gmbus_force_bit (int ,int) ;

__attribute__((used)) static void
intel_sdvo_unselect_i2c_bus(struct intel_sdvo *sdvo)
{
 intel_gmbus_force_bit(sdvo->i2c, 0);
}
