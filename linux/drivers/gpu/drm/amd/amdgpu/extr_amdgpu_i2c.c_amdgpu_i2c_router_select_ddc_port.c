
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int i2c_addr; int ddc_mux_state; int ddc_mux_control_pin; int ddc_valid; } ;
struct amdgpu_connector {TYPE_1__ router; int router_bus; } ;


 int amdgpu_i2c_get_byte (int ,int ,int,int *) ;
 int amdgpu_i2c_put_byte (int ,int ,int,int ) ;

void
amdgpu_i2c_router_select_ddc_port(const struct amdgpu_connector *amdgpu_connector)
{
 u8 val;

 if (!amdgpu_connector->router.ddc_valid)
  return;

 if (!amdgpu_connector->router_bus)
  return;

 amdgpu_i2c_get_byte(amdgpu_connector->router_bus,
       amdgpu_connector->router.i2c_addr,
       0x3, &val);
 val &= ~amdgpu_connector->router.ddc_mux_control_pin;
 amdgpu_i2c_put_byte(amdgpu_connector->router_bus,
       amdgpu_connector->router.i2c_addr,
       0x3, val);
 amdgpu_i2c_get_byte(amdgpu_connector->router_bus,
       amdgpu_connector->router.i2c_addr,
       0x1, &val);
 val &= ~amdgpu_connector->router.ddc_mux_control_pin;
 val |= amdgpu_connector->router.ddc_mux_state;
 amdgpu_i2c_put_byte(amdgpu_connector->router_bus,
       amdgpu_connector->router.i2c_addr,
       0x1, val);
}
