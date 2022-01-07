
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct TYPE_4__ {scalar_t__ ddc_valid; } ;
struct amdgpu_connector {TYPE_3__* ddc_bus; TYPE_1__ router; } ;
struct TYPE_5__ {int ddc; } ;
struct TYPE_6__ {int adapter; TYPE_2__ aux; } ;


 int DDC_ADDR ;
 int I2C_M_RD ;
 int amdgpu_i2c_router_select_ddc_port (struct amdgpu_connector*) ;
 int drm_edid_header_is_valid (int*) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

bool amdgpu_display_ddc_probe(struct amdgpu_connector *amdgpu_connector,
         bool use_aux)
{
 u8 out = 0x0;
 u8 buf[8];
 int ret;
 struct i2c_msg msgs[] = {
  {
   .addr = DDC_ADDR,
   .flags = 0,
   .len = 1,
   .buf = &out,
  },
  {
   .addr = DDC_ADDR,
   .flags = I2C_M_RD,
   .len = 8,
   .buf = buf,
  }
 };


 if (amdgpu_connector->router.ddc_valid)
  amdgpu_i2c_router_select_ddc_port(amdgpu_connector);

 if (use_aux) {
  ret = i2c_transfer(&amdgpu_connector->ddc_bus->aux.ddc, msgs, 2);
 } else {
  ret = i2c_transfer(&amdgpu_connector->ddc_bus->adapter, msgs, 2);
 }

 if (ret != 2)

  return 0;





 if (drm_edid_header_is_valid(buf) < 6) {


  return 0;
 }
 return 1;
}
